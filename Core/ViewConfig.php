<?php

namespace OxidProfessionalServices\CookieManager\Core;

class ViewConfig extends ViewConfig_parent
{
    /**
     * @param int $bool
     * @return string
     */
    public function convert($bool): string
    {
        {
        if ($bool == 1) {
            return "true";
        } else {
            return "false";
        }
        }
    }
}
