// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require moment
//= require fullcalendar

$(function () {
    // 画面遷移を検知
    $(document).on('turbolinks:load', function () {
        if ($('#calendar').length) {

            function Calendar() {
                return $('#calendar').fullCalendar({
                });
            }
            function clearCalendar() {
                $('#calendar').html('');
            }

            $(document).on('turbolinks:load', function () {
                Calendar();
            });
            $(document).on('turbolinks:before-cache', clearCalendar);

            //events: '/events.json', 以下に追加
            $('#calendar').fullCalendar({
                events: '/appointment_frames.json',

                //カレンダー上部表示
                titleFormat: 'YYYY年 M月',

                //曜日を日本語表示
                dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],

                //診察時間
                businessHours:[{
                    dow: [ 1, 2, 3, 4, 5, 6 ], // 月、火、水、木、金、土
                    start: '09:00',
                    end: '12:00',
                },
                {
                    dow: [ 1, 2, 4, 5, 0 ], // 月、火、木、金、日
                    start: '14:00',
                    end: '18:00',
                }],

                // スロットの時間の書式
                slotLabelFormat: 'A HH:mm',

                // 時間の書式
                timeFormat: 'H:mm',

                //ボタンのレイアウト
                header: {
                    left: '',
                    center: 'title',
                    right: 'today prev,next'
                },
                footer: {
                    center: "today prev,next"
                  },

                //高さ
                height: 'auto',

                //週表示
                defaultView: 'agendaWeek',

                //表示時間間隔
                slotDuration: '00:15:00',
                slotLabelInterval: 15,

                //カレンダーの表示期間

                //終了時刻がないイベントの表示間隔
                // defaultTimedEventDuration: '00:15:00',
                // buttonText: {
                //     prev: '前',
                //     next: '次',
                //     prevYear: '前年',
                //     nextYear: '翌年',
                //     today: '今日',
                //     month: '月',
                //     week: '週',
                //     day: '日'
                // },

                //予約可能時間設定
                minTime: "09:00:00",
                maxTime: "18:00:00",

                //終日スロット非表示
                allDaySlot: false,

                // 編集不可
                editable: false,

                //選択可
                selectable: true,

                //イベントの時間表示を２４時間に
                timeFormat: "HH:mm",

                //イベントの色を変える
                eventColor: '#87cefa',
                
                //カレンダーの表示範囲
                validRange: function(nowDate) {
                    return {
                      start: nowDate,
                      end: nowDate.clone().add(2, 'months')
                    };
                },

                //イベントの文字色を変える
                eventTextColor: '#000000',
                eventRender: function(event, element) {
                    element.css("font-size", "0.8em");
                    element.css("padding", "5px");
                }
            });
        }
    });
});