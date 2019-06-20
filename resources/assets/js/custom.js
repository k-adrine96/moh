// Theme
import tinymce from 'tinymce';

import 'tinymce/themes/silver';

import 'tinymce/plugins/print';
import 'tinymce/plugins/preview';
import 'tinymce/plugins/fullpage';
import 'tinymce/plugins/searchreplace';
import 'tinymce/plugins/autolink';
import 'tinymce/plugins/directionality';
import 'tinymce/plugins/visualblocks';
import 'tinymce/plugins/visualchars';
import 'tinymce/plugins/fullscreen';
import 'tinymce/plugins/image';
import 'tinymce/plugins/link';
import 'tinymce/plugins/media';
import 'tinymce/plugins/paste';
import 'tinymce/plugins/template';
import 'tinymce/plugins/table';
import 'tinymce/plugins/charmap';
import 'tinymce/plugins/hr';
import 'tinymce/plugins/code';
import 'tinymce/plugins/pagebreak';
import 'tinymce/plugins/nonbreaking';
import 'tinymce/plugins/anchor';
import 'tinymce/plugins/insertdatetime';
import 'tinymce/plugins/advlist';
import 'tinymce/plugins/lists';
import 'tinymce/plugins/wordcount';
import 'tinymce/plugins/imagetools';
import 'tinymce/plugins/contextmenu';
import 'tinymce/plugins/colorpicker';
import 'tinymce/plugins/textpattern';
import 'tinymce/plugins/textcolor';

function sampleText() {
  console.log(ed, 'ed');
  var ed = tinyMCE.get('elm1');
  ed.pasteAsPlainText = true;

  //adding handlers crossbrowser
  if (tinymce.isOpera || /Firefox\/2/.test(navigator.userAgent)) {
    ed.onKeyDown.add(function (ed, e) {
      if (((tinymce.isMac ? e.metaKey : e.ctrlKey) && e.keyCode == 86) || (e.shiftKey && e.keyCode == 45))
        ed.pasteAsPlainText = true;
    });
  } else {
    ed.onPaste.addToTop(function (ed, e) {
      ed.pasteAsPlainText = true;
    });
  }
}

window.tinymce_init_callback = function(editor)
{
  console.log($('meta[name="assets-path"]').attr('content')+'?path=js/skins/voyager');
  editor.remove();
  editor = null;
  tinymce.init({
    oninit: "sampleText",
    selector: 'textarea.richTextBox',
    // skin: 'voyager',
    min_height: 600,
    resize: 'vertical',
    plugins: 'paste print preview fullpage searchreplace autolink directionality visualblocks visualchars fullscreen image link media template table charmap hr pagebreak nonbreaking anchor insertdatetime advlist lists wordcount imagetools',
    extended_valid_elements: 'input[id|name|value|type|class|style|required|placeholder|autocomplete|onclick]',
    file_browser_callback: function (field_name, url, type, win) {
      if (type == 'image') {
        $('#upload_file').trigger('click');
      }
    },
    toolbar: 'styleselect bold italic underline | forecolor backcolor | alignleft aligncenter alignright | bullist numlist outdent indent | link image table youtube giphy | codesample',
    convert_urls: false,
    image_caption: true,
    image_title: true
  });
};

function tinymce_setup_callback(editor)
{
  //
}
