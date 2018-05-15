package {

	import flash.utils.ByteArray;
	import flash.system.Worker;
	import flash.system.WorkerDomain;
	import flash.events.Event;

	public class KatanaWorker {

		public function KatanaWorker(mainSWF: ByteArray) {
			// constructor code
			var w:Worker = WorkerDomain.current.createWorker(mainSWF);
			w.addEventListener(Event.WORKER_STATE, run);
		}

	}

}