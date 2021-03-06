import $ from 'jquery';
import * as Dropzone from "dropzone";

function initDropZone() {
    Dropzone.autoDiscover = false;

    let myDropzone = new Dropzone("#new_design", {
        url: $('#new_design').action,
        maxFilesize: 3,
        maxFiles: 1,
        previewsContainer: "#droparea",
        paramName: "design[photo]",
        addRemoveLinks: true, // Don't show remove links on dropzone itself.
        autoProcessQueue: false,
        dictRemoveFile: "Remove design image",
        sendingmultiple: function(data, xhr, formData) {
            formData.append("design[name]", $("#design_name").val());
            formData.append("design[story]", $("#design_story").val());
            formData.append("design[theme]", $("#design_theme").val());
        }
    });

    myDropzone.on("success", function(file, serverResponse) {
        /* Maybe display some more file information on your page */
        //console.log(serverResponse);
        //this is to redirect to the design show page
        window.location = serverResponse.redirect;
    });

    $('#new_design_btn').click(function(e) {
        myDropzone.processQueue();
    });

    console.log("dropzone initialized");
}

export {initDropZone}
