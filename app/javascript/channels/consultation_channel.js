import consumer from "./consumer";

const initConsultationCable = () => {
  const messagesContainer = document.getElementById('chats-messages');
  const messagesWrap = document.querySelector('.messages-wrap')
  console.log(messagesContainer)
  if (messagesContainer) {
    const id = messagesContainer.dataset.consultationId;
  console.log(id)
    consumer.subscriptions.create({ channel: "ConsultationChannel", id: id }, {
      received(data) {
        // console.log(data.message_partial); // called when data is broadcast in the cable
        messagesWrap.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initConsultationCable };
