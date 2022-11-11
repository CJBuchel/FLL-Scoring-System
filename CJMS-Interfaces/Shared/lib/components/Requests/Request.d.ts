import { IEvent } from "@cjms_shared/services";
import { IJudgingSession } from "@cjms_shared/services";
import { IMatch } from "@cjms_shared/services";
import { ITeamScore, ITeam } from "@cjms_shared/services";
import { ITeamScoresheet } from "@cjms_shared/services/lib/components/InterfaceModels/TeamScore";
export declare function CJMS_FETCH_GENERIC_POST(request: RequestInfo, postData: any, noAlert?: boolean): Promise<Response>;
export declare function CJMS_FETCH_GENERIC_GET(request: any, noAlert?: boolean): Promise<Response>;
export declare function CLOUD_FETCH_GENERIC_POST(request: RequestInfo, token: string, postData: any): Promise<Response>;
export declare function CLOUD_FETCH_GENERIC_DELETE(request: RequestInfo, token: string): Promise<Response>;
export declare function CLOUD_FETCH_GENERIC_GET(request: any): Promise<Response>;
export declare function CJMS_REQUEST_LOGIN(credentials: any): Promise<Response>;
export declare function CJMS_POST_TIMER(timerStatus: string): Promise<Response>;
export declare function CJMS_POST_SETUP(event: IEvent): Promise<Response>;
export declare function CJMS_POST_SCORE(team_number: string, teamScore: ITeamScore): Promise<Response>;
export declare function CJMS_REQUEST_TEAMS(noAlert?: boolean): Promise<ITeam[]>;
export declare function CJMS_POST_TEAM_UPDATE(team_number: string, team_update: ITeam): Promise<Response>;
export declare function CJMS_REQUEST_MATCHES(noAlert?: boolean): Promise<IMatch[]>;
export declare function CJMS_POST_MATCH_UPDATE(match_number: string, match_update: IMatch): Promise<Response>;
export declare function CJMS_REQUEST_EVENT(noAlert?: boolean): Promise<IEvent>;
export declare function CJMS_POST_EVENT_UPDATE(event: IEvent): Promise<Response>;
export declare function CJMS_REQUEST_JUDGING_SESSIONS(noAlert?: boolean): Promise<IJudgingSession[]>;
export declare function CLOUD_REQUEST_TOURNAMENTS(): Promise<Response>;
export declare function CLOUD_REQUEST_TEAMS(tournament_id: string): Promise<Response>;
export declare function CLOUD_REQUEST_SCORESHEETS(tournament_id: string): Promise<Response>;
export declare function CLOUD_POST_SCORESHEET(token: string, scoresheet: ITeamScoresheet): Promise<Response>;
export declare function CLOUD_DELETE_SCORESHEET(token: string, tournament_id: string, scoresheet_id: string): Promise<Response>;
