<?php

if (!function_exists('getFileIcon')) {
    /**
     * @param string $icon
     * @return mixed|string
     */
    function getFileIcon( string $icon ) {
        $icons = [
            'pdf'  => 'pdf',
            'PDF'  => 'pdf',
            'doc'  => 'word',
            'docx' => 'word',
            'xls'  => 'excel',
            'xlsx' => 'excel1',
            'zip'  => 'zip'
        ];

        $extension = \File::extension($icon);


        $noType = "n";

        if(isset($icons[$extension])) {
            return $icons[$extension];
        }

        return $noType;
    }

}

if (!function_exists('getFileSize')) {
    /**
     * @param string $file
     * @return mixed|string
     */

    function getFileSize(string $file) {


        $size = filesize(public_path($file));

        $units = ['B', 'KB', 'MB', 'GB', 'TB', 'PB'];

        for ($i = 0; $size > 1024; $i++) {
            $size /= 1024;
        }

        if(file_exists(public_path($file))){
            return  round($size, 2) . ' ' . $units[$i];
        }else{
            return "0 KB";
        }

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