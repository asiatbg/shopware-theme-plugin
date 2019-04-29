(function ($, window) {

    $.overridePlugin('swFilterComponent', {
        open: function(closeSiblings) {
            const me = this;

            if (closeSiblings) {
                const collapsedElement = $('.filter--facet-container > .is--collapsed');

                if (collapsedElement.length) {
                    const iconFilterPanel = collapsedElement.children('.filter-panel--flyout'). children('.filter-panel--title').children('.filter-panel--icon');
                    iconFilterPanel.removeClass('fa-minus').toggleClass('fa-plus');

                }
                me.$siblings.removeClass(me.opts.collapseCls);

            }

            me.$el.addClass(me.opts.collapseCls);

            const iconFilterPanel = me.$title.children('.filter-panel--icon');


            if(iconFilterPanel.hasClass('fa-plus')) {
                iconFilterPanel.removeClass('fa-plus').toggleClass('fa-minus');
            }
            $.publish('plugin/swFilterComponent/onOpen', [ me ]);
        },
    });


    $.subscribe('plugin/swFilterComponent/onClose', function (event, me) {
        const iconFilterPanel = me.$title.children('.filter-panel--icon');

        if (iconFilterPanel.hasClass('fa-minus')) {
            iconFilterPanel.toggleClass('fa-plus').removeClass('fa-minus');
        }
    });




    $.overridePlugin('swListingActions', {
        disableActiveFilterContainer: function (disabled) {
            const me = this;

            $.publish('plugin/swListingActions/disableActiveFilter', [this, disabled]);

            if (me.isFilterpanelInSidebar) {
                return;
            }

            if (disabled) {
                me.$activeFilterCont.addClass(me.opts.disabledCls);
            } else if (me.$activeFilterCont.hasClass(me.opts.disabledCls)) {
                me.$activeFilterCont.removeClass(me.opts.disabledCls);
            }
        },

        updateFilterTriggerButton: function (activeFilterCount) {
            if (activeFilterCount) {
                this.$filterTriggerIcon.html('( ' + activeFilterCount + ' )');
            } else {
                this.$filterTriggerIcon.html('');
            }


            $.publish('plugin/swListingActions/onUpdateFilterTriggerButton', [this, activeFilterCount]);
        },

        createActiveFilterElement: function (param, label) {
                this.activeFilterElements[param] = $('<span>', {
                    'class': this.opts.activeFilterCls,
                    'html': label + this.getLabelIcon(),
                    'data-filter-param': param
                }).appendTo(this.$activeFilterCont);

                const filterInputParent = $('#' + param).parent();
                if (filterInputParent.hasClass('filter-panel--input')) {
                    filterInputParent.siblings('.filter-panel--label').toggleClass('filter-is--active');
                } else {
                    filterInputParent.children('.filter-panel--label').toggleClass('filter-is--active');
                }

            $.publish('plugin/swListingActions/onCreateActiveFilterElement', [this, param, label]);
        },

        updateActiveFilterElement: function (param, label) {
            this.activeFilterElements[param].html(label + this.getLabelIcon());

            $.publish('plugin/swListingActions/onUpdateActiveFilterElement', [this, param, label]);
        },


        // Hide count of filtered products
        updateFilterCloseButton: function () {
            var filterCount = Object.keys(this.activeFilterElements).length;
            this.updateFilterTriggerButton(filterCount > 1 ? filterCount - 1 : filterCount);
        },


        // Show reset if there is at least one active filter
        createActiveFiltersFromCategoryParams: function (categoryParams) {
            var me = this,
                count = 0,
                params = categoryParams || this.categoryParams;

            $.each(this.activeFilterElements, function (key) {
                if (params[key] === undefined || params[key] === 0) {
                    me.removeActiveFilter(key);
                }
            });

            $.each(params, function (key, value) {
                me.createActiveFilter(key, value);
            });

            $.each(this.activeFilterElements, function () {
                count++;
            });

            if (count >= 1) {
                this.createActiveFilterElement('reset', this.resetLabel);
            }

            this.$filterCont.toggleClass(this.opts.hasActiveFilterCls, (count > 0));
            if (this.showInstantFilterResult && count > 0) {
                this.$filterCont.addClass(this.opts.instantFilterActiveCls);
            }

            if (!this.opts.isFilterpanelInSidebar) {
                this.$activeFilterCont.toggleClass(
                    this.opts.collapsedCls,
                    this.$filterCont.hasClass(this.opts.collapsedCls)
                );
            }

            $.publish('plugin/swListingActions/onCreateActiveFiltersFromCategoryParams', [this, categoryParams]);
        },
    });



    $.subscribe('plugin/swListingActions/onOpenFilterPanel', function() {
        toggleSwitch(true);
    });

    $.subscribe('plugin/swListingActions/onCloseFilterPanel', function() {
        toggleSwitch(false);
    });

    $.subscribe('plugin/swListingActions/onEnterMobile', function (event, window) {
        toggleSwitch(false);
    });


    $.subscribe('plugin/swListingActions/onRemoveActiveFilter', function (event, window, param) {
        const filterInputParent = $('#' + param).parent();
        if (filterInputParent.hasClass('filter-panel--input')) {
            filterInputParent.siblings('.filter-panel--label').removeClass('filter-is--active');
        } else {
            filterInputParent.children('.filter-panel--label').removeClass('filter-is--active');
        }
    });



    function toggleSwitch(boolean) {
        const filterToggle = $('.toggle_switch');
        const filterToggleInput = filterToggle.children('input');
        filterToggleInput.prop('checked', boolean);
    }

})(jQuery, window);