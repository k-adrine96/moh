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

        dd($icon);
        $extension = \File::extension($icon);


        $noType = "n";

        if(isset($icons[$extension])) {
            return $icons[$extension];
        }

        return $noType;
    }
}