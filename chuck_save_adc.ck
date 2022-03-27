// enregister adc dans un fichier wav mono
// arguments: chuck_save_adc.ck:<filename>
// exemple pour lancer :
// chuck.alsa /home/emoc/bin/chuck_save_adc.ck:/home/emoc/bin/tt.wav

//me.arg(0) => string filename;                        // récupérer le nom de fichier en argument
//if( filename.length() == 0 ) "foo.wav" => filename;  // sinon ce sera foo.wav

adc => Gain g => WvOut w => blackhole;               // pull samples from the dac
//filename => w.wavFilename;                           // this is the output file name

"enregistrement_micro_" => w.autoPrefix;
// this is the output file name
"special:auto" => w.wavFilename;

<<<"writing to file:", "'" + w.filename() + "'">>>;
<<<"ctrl-C pour arreter! (arret automatique desative)">>>;

1 => g.gain;                                         // any gain you want for the output

null @=> w;                                          // temporary workaround to automatically close file on remove-shred

// 10::second => now;
while( true ) 1::second => now;