// plug your mic! 08*2008 / emoc / codelab.fr
<<<"sing me a song">>>;
adc => LiSa loopme => dac;
10::second => loopme.duration;
loopme.recRamp( 200::ms );
loopme.record( 1 );
10000::ms => now;
loopme.record(0);
1::ms => dur d;
0 => int v;
fun void play2(int voicen, int startpos, float excerptrate){
    loopme.playPos(voicen, d * startpos);
    loopme.rate(voicen, excerptrate);
    loopme.play(voicen, 1);
}
while (true) {
    Std.rand2(200,2000) => int excerptdur;
    Std.rand2(0,10000 - excerptdur) => int startpos;
    
    float excerptrate;
    if (Std.randf() > -0.5) Std.rand2f(0.2,0.8) => excerptrate;
    else Std.rand2f(1.2,2.3) => excerptrate;
    spork ~ play2(v, startpos, excerptrate);
    1::second => now;
    
    v++; 
    if (v > 9) 0 => v;
}