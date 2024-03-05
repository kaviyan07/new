function showLoadingModal(message) {
    $('body').loadingModal({ text: message, 'animation': 'fadingCircle' });
}
function hideLoadingModal() {
    $('body').loadingModal('hide');
    $('body').loadingModal('destroy');
}
