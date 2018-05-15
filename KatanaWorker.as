package {

	import flash.utils.ByteArray;
	import flash.system.Worker;
	import flash.system.WorkerDomain;
	import flash.system.WorkerState;
	import flash.events.Event;

	public class KatanaWorker {
		
		public static const currentDomain:WorkerDomain = WorkerDomain.current;

		public function KatanaWorker(mainSWF: ByteArray) {
			// constructor code
			var worker:Worker = currentDomain.createWorker(mainSWF);
			worker.addEventListener(Event.WORKER_STATE, run);
			worker.start();
			
			function run(in1:Event):void {
				if(in1.target.state == WorkerState.RUNNING) {
					trace("This worker is running.");
					in1.target.terminate();
				}
				else if(in1.target.state == WorkerState.TERMINATED)
					trace("Worker terminated.");
			}
			
		}

	}

}