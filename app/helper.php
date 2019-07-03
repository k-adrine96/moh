<?php

if (!function_exists('getFileIcon')) {
    /**
     * @param string $icon
     * @return mixed|string
     */
    function getFileIcon(string $icon ) {
        $icons = [
            'pdf'  => 'pdf',
            'doc'  => 'word',
            'docx' => 'word',
            'xls'  => 'excel',
            'xlsx' => 'excel1',
            'zip' => 'zip'
        ];

        $extension = \File::extension($icon);


        $noType = "n";

        if(isset($icons[$extension])) {
            return $icons[$extension];
        }

        return $noType;
    }

}

if (!function_exists('getDescription')) {
    /**
     * @param string $str
     * @return mixed|string
     */

    function getDescription(string $str ) {
        $description = str_replace("&nbsp;"," ", $str);
        return $description;
    }

}