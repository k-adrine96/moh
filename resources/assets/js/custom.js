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
  editor.remove();
  editor = null;
  tinymce.init({
    skin_url: '/skins/ui/oxide',
    content_css: '/skins/content/default',
    skin: "oxide",
    oninit: "sampleText",
    selector: 'textarea.richTextBox',
    // skin: 'voyager',
    min_height: 600,
    resize: 'vertical',
    plugins: 'image paste print preview fullpage searchreplace autolink directionality visualblocks visualchars fullscreen image link media template table charmap hr pagebreak nonbreaking anchor insertdatetime advlist lists wordcount imagetools',
    extended_valid_elements: 'input[id|name|value|type|class|style|required|placeholder|autocomplete|onclick]',
    file_browser_callback: function (field_name, url, type, win) {
      if (type == 'image') {
        $('#upload_file').trigger('click');
      }
    },
    toolbar: 'styleselect bold italic underline | forecolor backcolor | alignleft aligncenter alignright | bullist numlist outdent indent | link image table youtube giphy | codesample',

    convert_urls: true,
    images_upload_url: `${location.origin}/file-upload`,
    image_upload_url: `${location.origin}/file-upload`,
    automatic_uploads: false,
    file_picker_types: 'image',
    /* and here's our custom image picker*/
    file_picker_callback: function (cb, value, meta) {
      var input = document.createElement('input');
      input.setAttribute('type', 'file');
      input.setAttribute('accept', 'image/*');
      input.onchange = function () {
        var file = this.files[0];
        var reader = new FileReader();
        reader.onload = function () {
          var id = 'blobid' + (new Date()).getTime();
          var blobCache =  tinymce.activeEditor.editorUpload.blobCache;
          var base64 = reader.result.split(',')[1];
          var blobInfo = blobCache.create(id, file, base64);
          blobCache.add(blobInfo);


          /* call the callback and populate the Title field with the file name */
          cb(blobInfo.blobUri(), { title: file.name });
        };
        reader.readAsDataURL(file);
      };

      input.click();
    },
    images_upload_handler: (blobInfo, success, failure) => {

      let formData = new FormData();

      formData.append('image', blobInfo.blob(), blobInfo.filename());
      formData.append('data', blobInfo.filename());
      console.log(formData, 'formdata');

      $.ajax({
        url: `${location.origin}/file-upload`,
        data: formData,
        method: 'post',
        success: function(res) {
          console.log(res);
        },
        error: function(err) {
          console.log(err);
        }
      });

    }


  });
};

function tinymce_setup_callback(editor)
{
  //
}
