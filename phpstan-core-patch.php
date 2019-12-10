<?php
/**
 * Copyright © OXID eSales AG. All rights reserved.
 * See LICENSE file for license details.
 */

/**
 * Creates and returns new object. If creation is not available, dies and outputs
 * error message.
 *
 * @param string $className Name of class
 * @param mixed  ...$args   constructor arguments
 *
 * @return mixed
 */
function oxNew($className)
{
    startProfile('oxNew');
    $arguments = func_get_args();
    $object = call_user_func_array([UtilsObject::getInstance(), "oxNew"], $arguments);
    stopProfile('oxNew');

    return $object;
}
