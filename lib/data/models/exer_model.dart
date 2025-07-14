class ExerModel {
  final Today today;
  final Today total;
  final PeriodStat todayStat;
  final PeriodStat weekStat;
  final PeriodStat monthStat;
  final List<WeekStat> weekStats;
  final String daily;
  final int weeklyDailyAverageWorkoutDuration;
  final int weeklyMaxWorkoutDuration;

  ExerModel({
    required this.today,
    required this.total,
    required this.todayStat,
    required this.weekStat,
    required this.monthStat,
    required this.weekStats,
    required this.daily,
    required this.weeklyDailyAverageWorkoutDuration,
    required this.weeklyMaxWorkoutDuration,
  });

  factory ExerModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'];
    return ExerModel(
      today: Today.fromJson(data['today']),
      total: Today.fromJson(data['total']),
      todayStat: PeriodStat.fromJson(data['today_stat']),
      weekStat: PeriodStat.fromJson(data['week_stat']),
      monthStat: PeriodStat.fromJson(data['month_stat']),
      weekStats: (data['week_stats'] as List)
          .map((e) => WeekStat.fromJson(e))
          .toList(),
      daily: data['daily'],
      weeklyDailyAverageWorkoutDuration:
      data['weekly_daily_average_workout_duration'],
      weeklyMaxWorkoutDuration: data['weekly_max_workout_duration'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'today': today.toJson(),
      'total': total.toJson(),
      'today_stat': todayStat.toJson(),
      'week_stat': weekStat.toJson(),
      'month_stat': monthStat.toJson(),
      'week_stats': weekStats.map((e) => e.toJson()).toList(),
      'daily': daily,
      'weekly_daily_average_workout_duration': weeklyDailyAverageWorkoutDuration,
      'weekly_max_workout_duration': weeklyMaxWorkoutDuration,
    };
  }
}

class Today {
  final String type;
  final int time;

  Today({required this.type, required this.time});

  factory Today.fromJson(Map<String, dynamic> json) {
    return Today(
      type: json['type'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'time': time,
    };
  }
}

class PeriodStat {
  final String startDate;
  final String endDate;
  final String type;
  final int time;
  final int avgTime;

  PeriodStat({
    required this.startDate,
    required this.endDate,
    required this.type,
    required this.time,
    required this.avgTime,
  });

  factory PeriodStat.fromJson(Map<String, dynamic> json) {
    return PeriodStat(
      startDate: json['start_date'],
      endDate: json['end_date'],
      type: json['type'],
      time: json['time'],
      avgTime: json['avg_time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'start_date': startDate,
      'end_date': endDate,
      'type': type,
      'time': time,
      'avg_time': avgTime,
    };
  }
}

class WeekStat {
  final String workDate;
  final int duration;

  WeekStat({required this.workDate, required this.duration});

  factory WeekStat.fromJson(Map<String, dynamic> json) {
    return WeekStat(
      workDate: json['work_date'],
      duration: json['duration'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'work_date': workDate,
      'duration': duration,
    };
  }
}
