//インストールしたファイルたちを呼び出します。
import { Calendar } from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
import monthGridPlugin from '@fullcalendar/daygrid'
import googleCalendarApi from '@fullcalendar/google-calendar'
// import timeGridWeekPlugin from '@fullcalendar/daygrid'
// import timeGridDayPlugin from '@fullcalendar/daygrid'
// import listMonthlugin from '@fullcalendar/daygrid'

//<div id='calendar'></div>のidからオブジェクトを定義してカレンダーを作っていきます。
document.addEventListener('turbolinks:load', function () {
  var calendarEl = document.getElementById('calendar');

  //カレンダーの中身を設定(月表示とか、クリックアクション起こしたいとか、googleCalendar使うととか)
  var calendar = new Calendar(calendarEl, {
    plugins: [monthGridPlugin, interactionPlugin, googleCalendarApi],


    //細かな表示設定
    locale: 'ja',
    timeZone: 'Asia/Tokyo',
    firstDay: 1,
    headerToolbar: {
      start: 'prev,next today',
      center: 'title',
      end: 'dayGridMonth'
      // end: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
    },
    expandRows: true,
    stickyHeaderDates: true,
    buttonText: {
      today: '今日'
    },
    allDayText: '終日',
    height: "auto",

    dateClick: function (info) {
      //日付をクリックしたときのイベント(詳しくは次回の記事へ)
    },
    eventClick: function (info) {
      //表示されたイベントをクリックしたときのイベント(詳しくは次回の記事へ)
    },
    eventClassNames: function (arg) {
      //表示されたイベントにclassをcss用に追加する(詳しくは次回の記事へ)
    }

  });
  //カレンダー表示
  calendar.render();

});
