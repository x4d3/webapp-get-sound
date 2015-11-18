package servlet;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import voce.SpeechInterface;


public class CreateToto {

	public static void main(String[] argv) {
		SpeechInterface.init("../../../lib", true, false, "", "");

		SpeechInterface.synthesize("This is a speech synthesis test.");
		SpeechInterface.synthesize("Type a message to hear it spoken " + "aloud.");

		System.out.println("This is a speech synthesis test.  " + "Type a message to hear it spoken aloud.");
		System.out.println("Type 's' + 'enter' to make the " + "synthesizer stop speaking.  Type 'q' + 'enter' to quit.");

		BufferedReader console = new BufferedReader(new InputStreamReader(System.in));
 
		try {
			String s = "";
			while (!s.equals("q")) {
				// Read a line from keyboard.
				s = console.readLine();

				if (s.equals("s")) {
					SpeechInterface.stopSynthesizing();
				} else {
					// Speak what was typed.
					SpeechInterface.synthesize(s);
				}
			}
		} catch (java.io.IOException ioe) {
			System.out.println("IO error:" + ioe);
		}

		SpeechInterface.destroy();
		System.exit(0);
	}
}
