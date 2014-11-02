function handle_click(evt) {
    if (show_overlay && evt.cyTarget.id() != 'Music and Dance' && evt.cyTarget.id() != 'Tourism') {
        $.ajax({
            url: 'index.php?show_overlay=1&src=' + encodeURIComponent(source) + '&dst_node=' + encodeURIComponent(evt.cyTarget.id()),
            type: 'GET',
            success: function (response) {
                var $dialog_content = '<div id="dialog_content">' +
                    '</div>';
                var buttonOptions = {};
                buttonOptions.Close = function () {
                    $(this).remove();
                };
                // Dialog content.
                var $dialog_content = $('<div/>').append($dialog_content);
                // Create dialog.
                $response_dialog = $($dialog_content).dialog({
                    minWidth: 600,
                    minHeight: 200,
                    modal: true,
                    title: source + ' - ' + evt.cyTarget.id(),
                    resizable: true,
                    draggable: true,
                    buttons: buttonOptions,
                    open: function () {
                        $('#dialog_content').html('<div>' + response + '</div>');
                    },
                    close: function () {
                        $(this).remove();
                    }
                });
            }
        });
    } else if(evt.cyTarget.id() == 'Asia' && source == 'Asia') {	
		window.location.href = 'index.php?source=Asia-2&type=explore';
	} else 	{
        window.location.href = 'index.php?source=' + encodeURIComponent(evt.cyTarget.id()) + '&type=information';
    }
}

$(document).ready(function () {
    $('#explore').click(function () {
        window.location.href = 'index.php?source=' + encodeURIComponent(source) + '&type=explore';
    });

    $('#information').click(function () {
        window.location.href = 'index.php?source=' + encodeURIComponent(source) + '&type=information';
    });
});