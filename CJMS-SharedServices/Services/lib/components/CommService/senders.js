"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.sendClockEndGameEvent = exports.sendClockReloadEvent = exports.sendClockStartEvent = exports.sendClockPrestartEvent = exports.sendClockTimeEvent = exports.sendClockStopEvent = exports.sendClockEndEvent = void 0;
const publish_1 = require("./binding/publish");
function sendClockEndEvent(e) { (0, publish_1.sendEvent)('clock', 'end', e); }
exports.sendClockEndEvent = sendClockEndEvent;
function sendClockStopEvent(e) { (0, publish_1.sendEvent)('clock', 'stop', e); }
exports.sendClockStopEvent = sendClockStopEvent;
function sendClockTimeEvent(e) { (0, publish_1.sendEvent)('clock', 'time', e); }
exports.sendClockTimeEvent = sendClockTimeEvent;
function sendClockPrestartEvent(e) { (0, publish_1.sendEvent)('clock', 'prestart', e); }
exports.sendClockPrestartEvent = sendClockPrestartEvent;
function sendClockStartEvent(e) { (0, publish_1.sendEvent)('clock', 'start', e); }
exports.sendClockStartEvent = sendClockStartEvent;
function sendClockReloadEvent(e) { (0, publish_1.sendEvent)('clock', 'reload', e); }
exports.sendClockReloadEvent = sendClockReloadEvent;
function sendClockEndGameEvent(e) { (0, publish_1.sendEvent)('clock', 'endgame', e); }
exports.sendClockEndGameEvent = sendClockEndGameEvent;
