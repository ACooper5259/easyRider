import React from "react"
import { Calendar, dateFnsLocalizer } from 'react-big-calendar'
import 'react-big-calendar/lib/css/react-big-calendar.css';
import format from 'date-fns/format'
import parse from 'date-fns/parse'
import startOfWeek from 'date-fns/startOfWeek'
import getDay from 'date-fns/getDay'
const locales = {
  'en-US': require('date-fns/locale/en-US'),
}
const localizer = dateFnsLocalizer({
  format,
  parse,
  startOfWeek,
  getDay,
  locales,
})

const myEventsList = [
  {
    'title': 'My event',
    'allDay': false,
    'start': new Date(2021, 0, 25, 10, 0), // 10.00 AM
    'end': new Date(2021, 0, 25, 14, 0), // 2.00 PM 
  }
]

const MyCalendar = props => (
  
  <div>
    <Calendar
      localizer={localizer}
      events={myEventsList}
      defaultDate={new Date()}
      defaultView="month"
      style={{ height: 500 }}
    />
  </div>
)

export default MyCalendar;