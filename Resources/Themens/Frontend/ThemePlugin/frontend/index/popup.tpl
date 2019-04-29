{block name="frontend_index_popup"}
    <div class="wrapper-popup">
        <div class="modal-header">
            <a href="#"><img src="themes/Frontend/VirtuaTheme/frontend/_public/src/img/SG_black_horizontal_logo_REGISTERED-O.svg" alt="logo"></a>
            <button class="btn--close">Close</button>
            <div class="popup-content">
                <ul class="currency-list">
                    {*{debug}*}
                    {*{foreach currencies as $currency}*}

                        {*<li class="currency-list__item">*}
                            {*<a href="">*}
                                {*<img src="themes/Frontend/VirtuaTheme/frontend/_public/src/img/{$currency->getCurrency()->getName()}.png" alt="">*}

                            {*</a>*}
                        {*</li>*}
                    {*{/foreach}*}
                </ul>
            </div>
        </div>

        {block name='frontend_index_popup_content'}

        {/block}
    </div>
{/block}