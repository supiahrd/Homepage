// Contact CTA: 전화 또는 이메일 중 하나 이상 입력 후 제출 시 확인 메시지로 전환
// (실 서버 연동은 3단계 코딩 - Contact 폼 처리 단계에서 PHP로 대체 예정)
document.addEventListener('DOMContentLoaded', function () {
  var form = document.querySelector('.contact-form-row');
  var submitBtn = document.querySelector('.contact-submit');
  var confirmBox = document.querySelector('.contact-confirm');
  if (!form || !submitBtn || !confirmBox) return;

  var phoneInput = form.querySelector('input[type="tel"]');
  var emailInput = form.querySelector('input[type="email"]');

  submitBtn.addEventListener('click', function () {
    var phone = phoneInput.value.trim();
    var email = emailInput.value.trim();
    if (!phone && !email) return;

    form.classList.add('hidden');
    submitBtn.classList.add('hidden');
    confirmBox.classList.remove('hidden');
  });
});
