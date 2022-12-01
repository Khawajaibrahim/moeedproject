
import 'package:flutter/material.dart';

import '../widgets/calendar.dart';



enum CalendarViews{ dates, months, year }

class Calender extends StatefulWidget {
  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {

  late DateTime _currentDateTime;
  late DateTime _selectedDateTime;
  late List<Calendar> _sequentialDates;
  late int midYear;
  CalendarViews _currentView = CalendarViews.dates;
 final List<String> _weekDays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
  final List<String> _monthNames = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

  @override
  void initState() {
    super.initState();
    final date = DateTime.now();
    _currentDateTime = DateTime(date.year, date.month);
    _selectedDateTime = DateTime(date.year, date.month, date.day);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() => _getCalendar());
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: (_currentView == CalendarViews.dates) ? _datesView()
                : (_currentView == CalendarViews.months) ? _showMonthsList() : _yearsView(midYear ?? _currentDateTime.year)
        ),
      ),
    );
  }

  // dates view
  Widget _datesView(){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // header
        Row(
          children: <Widget>[
            // prev month button
            _toggleBtn(false),
            // month and year
            Expanded(
              child: InkWell(
                onTap: () => setState(() => _currentView = CalendarViews.months),
                child: Center(
                  child: Text(
                    '${_monthNames[_currentDateTime.month-1]} ${_currentDateTime.year}',
                    style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            // next month button
            _toggleBtn(true),
          ],
        ),
        SizedBox(height: 20,),
        Divider(color: Colors.black,),
        SizedBox(height: 20,),
        Flexible(child: _calendarBody()),
      ],
    );
  }

  // next / prev month buttons
  Widget _toggleBtn(bool next) {
    return InkWell(
      onTap: (){
        if(_currentView == CalendarViews.dates){
          setState(() => (next) ? _getNextMonth() : _getPrevMonth());
        }
        else if(_currentView == CalendarViews.year){
          if(next){
            midYear = (midYear == null) ? _currentDateTime.year + 9 : midYear + 9;
          }
          else{
            midYear = (midYear == null) ? _currentDateTime.year - 9 : midYear - 9;
          }
          setState(() {});
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,

       // child: Icon((next) ? Icons.arrow_forward_ios : Icons.arrow_back_ios, color: Colors.white,),
      ),
    );
  }

  // calendar
  Widget _calendarBody() {
    if(_sequentialDates == null) return Container();
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: _sequentialDates.length + 7,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 20,
        crossAxisCount: 7,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index){
        if(index < 7) return _weekDayTitle(index);
        if(_sequentialDates[index - 7].date == _selectedDateTime)
          return _selector(_sequentialDates[index - 7]);
        return _calendarDates(_sequentialDates[index - 7]);
      },
    );
  }

  // calendar header
  Widget _weekDayTitle(int index){
    return Text(_weekDays[index], style: TextStyle(color: Colors.pinkAccent, fontSize: 10),);
  }

  // calendar element
  Widget _calendarDates(Calendar calendarDate){
    return InkWell(
      onTap: (){
        if(_selectedDateTime != calendarDate.date){
          if(calendarDate.nextMonth){
            _getNextMonth();
          }
          else if(calendarDate.prevMonth){
            _getPrevMonth();
          }
          setState(() => _selectedDateTime = calendarDate.date);
        }
      },
      child: Center(
          child: Text(
            '${calendarDate.date.day}',
            style: TextStyle(
              color: (calendarDate.thisMonth)
                  ? (calendarDate.date.weekday == DateTime.sunday) ? Colors.pinkAccent : Colors.black
                  : (calendarDate.date.weekday == DateTime.sunday) ? Colors.pinkAccent.withOpacity(0.5) : Colors.black.withOpacity(0.5),
            ),
          )
      ),
    );
  }

  // date selector
  Widget _selector(Calendar calendarDate) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.pinkAccent, width: 4),
        gradient: LinearGradient(
          colors: [Colors.black.withOpacity(0.1), Colors.pinkAccent],
          stops: [0.1, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pinkAccent.withOpacity(0.9),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            '${calendarDate.date.day}',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
    );
  }

  // get next month calendar
  void _getNextMonth(){
    if(_currentDateTime.month == 12) {
      _currentDateTime = DateTime(_currentDateTime.year+1, 1);
    }
    else{
      _currentDateTime = DateTime(_currentDateTime.year, _currentDateTime.month+1);
    }
    _getCalendar();
  }

  // get previous month calendar
  void _getPrevMonth(){
    if(_currentDateTime.month == 1){
      _currentDateTime = DateTime(_currentDateTime.year-1, 12);
    }
    else{
      _currentDateTime = DateTime(_currentDateTime.year, _currentDateTime.month-1);
    }
    _getCalendar();
  }

  // get calendar for current month
  void _getCalendar(){
    _sequentialDates = CustomCalendar().getMonthCalendar(_currentDateTime.month, _currentDateTime.year, startWeekDay: StartWeekDay.monday);
  }

  // show months list
  Widget _showMonthsList(){
    return Column(
      children: <Widget>[
        Row(
          children: [
            InkWell(
              onTap: () => setState(() => _currentView = CalendarViews.year),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('${_currentDateTime.year}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),),
              ),
            ),

          ],
        ),
        Divider(color: Colors.black,),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: _monthNames.length,
            itemBuilder: (context, index) => ListTile(
              onTap: (){
                _currentDateTime = DateTime(_currentDateTime.year, index+1);
                _getCalendar();
                setState(() => _currentView = CalendarViews.dates);
              },
              title: Center(
                child: Text(
                  _monthNames[index],
                  style: TextStyle(fontSize: 18, color: (index == _currentDateTime.month-1) ? Colors.pinkAccent : Colors.black),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // years list views
  Widget _yearsView(int midYear){
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            _toggleBtn(false),
            Spacer(),
            _toggleBtn(true),
          ],
        ),
        Expanded(
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: 9,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index){
                int thisYear;
                if(index < 4){
                  thisYear = midYear - (4 - index);
                }
                else if(index > 4){
                  thisYear = midYear + (index - 4);
                }
                else{
                  thisYear = midYear;
                }
                return ListTile(
                  onTap: (){
                    _currentDateTime = DateTime(thisYear, _currentDateTime.month);
                    _getCalendar();
                    setState(() => _currentView = CalendarViews.months);
                  },
                  title: Text(
                    '$thisYear',
                    style: TextStyle(fontSize: 18, color: (thisYear == _currentDateTime.year) ? Colors.pinkAccent : Colors.black),
                  ),
                );
              }
          ),
        ),
      ],
    );
  }
}
