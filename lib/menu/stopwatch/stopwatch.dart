import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class StopwatchScreen extends StatefulWidget {
  const StopwatchScreen({super.key});

  @override
  State<StopwatchScreen> createState() => _StopwatchScreenState();
}

class _StopwatchScreenState extends State<StopwatchScreen> {
  final StopWatchTimer _stopWatchTimer = StopWatchTimer(); // Create instance.
  List<String> laps = [];
  int started = 0;
  bool returnButton = false;
  int? time;
  bool show = false;

  void start() {
    setState(() {
      show = true;
      started = 1;
      _stopWatchTimer.onStartTimer();
      _stopWatchTimer.secondTime.listen((value) => time = value);
    });
  }

  void stop() {
    setState(() {
      started = 0;
      _stopWatchTimer.onStopTimer();
      returnButton = !returnButton;
    });
  }

  void reset() {
    setState(() {
      show = false;
      started = 0;
      _stopWatchTimer.onResetTimer();
      returnButton = !returnButton;
      laps = [];
    });
  }

  void lap() {
    final currentValue = _stopWatchTimer.rawTime.value;
    final milliseconds = currentValue % 1000;
    final seconds = (currentValue ~/ 1000) % 60;
    final minutes = (currentValue ~/ (1000 * 60)) % 60;

    // Format Waktu
    final lapTime =
        "${minutes.toString().padLeft(2, '0')}.${seconds.toString().padLeft(2, '0')},${(milliseconds ~/ 10).toString().padLeft(2, '0')}";

    setState(() {
      laps.add(lapTime);
    });
  }

  @override
  void dispose() async {
    super.dispose();
    await _stopWatchTimer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF8F4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBF8F4),
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const Text('Stopwatch'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                // Time Screen
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22.0),
                  child: StreamBuilder<int>(
                    stream: _stopWatchTimer.rawTime,
                    initialData: 0,
                    builder: (context, snap) {
                      final value = snap.data ?? 0;
                      final milliseconds = value % 1000; // milliseconds
                      final seconds = (value ~/ 1000) % 60; // seconds
                      final minutes = (value ~/ (1000 * 60)) % 60; // minutes

                      return Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: Text(
                                // Format output "mm.ss,ms"
                                "${minutes.toString().padLeft(2, '0')}.${seconds.toString().padLeft(2, '0')},${(milliseconds ~/ 10).toString().padLeft(2, '0')}",
                                style: const TextStyle(
                                    fontSize: 68,
                                    fontFamily: 'Helvetica',
                                    color: Color(0xFF774C18)),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),

                // Button
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Left Button
                      SizedBox(
                        width: 61,
                        height: 61,
                        child: IconButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                            show
                                ? const Color(0xff774C18)
                                : const Color.fromARGB(167, 119, 76, 24),
                          )),
                          onPressed: () {
                            reset();
                          },
                          icon: const Icon(
                            Icons.restart_alt_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      // Mid Button
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12),
                        child: SizedBox(
                          width: 92,
                          height: 92,
                          child: IconButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Color(0xff774C18))),
                            onPressed: () {
                              setState(() {
                                if (started == 0) {
                                  start();
                                } else {
                                  stop();
                                }
                              });
                            },
                            icon: started == 1
                                ? const Icon(
                                    Icons.pause,
                                    color: Colors.white,
                                    size: 60,
                                  )
                                : const Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 60,
                                  ),
                          ),
                        ),
                      ),

                      // Right Button
                      SizedBox(
                        width: 61,
                        height: 61,
                        child: IconButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                            show
                                ? const Color(0xff774C18)
                                : const Color.fromARGB(167, 119, 76, 24),
                          )),
                          onPressed: () {
                            // Call the lap method to save the lap
                            if (started == 1 || started == 2) {
                              lap(); // Save lap time if running
                            }
                          },
                          icon: const Icon(
                            Icons.timer,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Lap
                Padding(
                  padding: const EdgeInsets.only(top: 22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Time Records',
                        style:
                            TextStyle(color: Color(0xff774C18), fontSize: 18),
                      ),
                      const Divider(),
                      SizedBox(
                        width: double.infinity,
                        height: 340,
                        child: ListView.builder(
                          itemCount: laps.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 72,
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Lap ${index + 1}',
                                          style: const TextStyle(
                                              color: Color(0xff774C18),
                                              fontSize: 18),
                                        ),
                                        Text(
                                          laps[index],
                                          style: const TextStyle(
                                              color: Color(0xff774C18),
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
