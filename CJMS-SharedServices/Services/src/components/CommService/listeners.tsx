import { onEvent } from "./binding/subscribe";

// Clock Events
export const onClockArmEvent = onEvent.bind(null, 'clock', 'arm');
export const onClockEndEvent = onEvent.bind(null, 'clock', 'end');
export const onClockStopEvent = onEvent.bind(null, 'clock', 'stop');
export const onClockTimeEvent = onEvent.bind(null, 'clock', 'time');
export const onClockPrestartEvent = onEvent.bind(null, 'clock', 'prestart');
export const onClockStartEvent = onEvent.bind(null, 'clock', 'start');
export const onClockReloadEvent = onEvent.bind(null, 'clock', 'reload');
export const onClockEndGameEvent = onEvent.bind(null, 'clock', 'endgame');