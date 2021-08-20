//インストールしたファイルたちを呼び出します。
import { Calendar } from '@fullcalendar/core';
import interactionPlugin from '@fullcalendar/interaction';
import monthGridPlugin from '@fullcalendar/daygrid'
import googleCalendarApi from '@fullcalendar/google-calendar'
import timeGridWeekPlugin from '@fullcalendar/timegrid'
import timeGridDayPlugin from '@fullcalendar/timegrid'
// import listPlugin from '@fullcalendar/list'

//<div id='calendar'></div>のidからオブジェクトを定義してカレンダーを作っていきます。
document.addEventListener('turbolinks:load', function () {
  var calendarEl = document.getElementById('calendar');

  //カレンダーの中身を設定(月表示とか、クリックアクション起こしたいとか、googleCalendar使うととか)
  var calendar = new Calendar(calendarEl, {
    plugins: [monthGridPlugin, interactionPlugin, googleCalendarApi, timeGridWeekPlugin, timeGridDayPlugin],

    events: "/users/homes/index.json",

    // events: [
    //   {
    //     title: 'event1',
    //     start: '2021-08-12'
    //   }
    // ],



    //細かな表示設定
    locale: 'ja',
    timeZone: 'Asia/Tokyo',
    firstDay: 1,
    headerToolbar: {
      start: 'prev,next today',
      center: 'title',
      end: 'dayGridMonth, timeGridWeek, timeGridDay'
      // end: 'dayGridMonth,timeGridWeek,timeGridDay,list'
    },

    expandRows: true,
    navLinks: true,
    stickyHeaderDates: true,
    buttonText: {
      today: '今日',
      month: '月',
      week: '週',
      day: '日'
    },
    allDayText: '終日',
    height: "auto",


    dateClick: function (info) {
      //日付をクリックしたときのイベント(詳しくは次回の記事へ)
      // alert('日付です');
    },
    eventClick: function (info) {
      //表示されたイベントをクリックしたときのイベント(詳しくは次回の記事へ)
      alert(gon.user_name + 'さんのスケジュールです。');
    },
    eventClassNames: function (arg) {
      //表示されたイベントにclassをcss用に追加する(詳しくは次回の記事へ)
    }

  });
  //カレンダー表示
  calendar.render();

});
