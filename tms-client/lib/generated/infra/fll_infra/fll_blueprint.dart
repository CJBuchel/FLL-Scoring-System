// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.2.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'category_question.dart';
import 'mission.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'question.dart';
import 'rule_engine.dart';


            // These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`


            

            class FllBlueprint  {
                final List<Question> robotGameQuestions;
final List<Mission> robotGameMissions;

                const FllBlueprint({required this.robotGameQuestions ,required this.robotGameMissions ,});

                static Future<FllBlueprint>  default_()=>TmsRustLib.instance.api.crateInfraFllInfraFllBlueprintFllBlueprintDefault();


static FllBlueprint  fromJsonString({required String json })=>TmsRustLib.instance.api.crateInfraFllInfraFllBlueprintFllBlueprintFromJsonString(json: json);


 String  toJsonString()=>TmsRustLib.instance.api.crateInfraFllInfraFllBlueprintFllBlueprintToJsonString(that: this, );


static String  toSchema()=>TmsRustLib.instance.api.crateInfraFllInfraFllBlueprintFllBlueprintToSchema();


                

                
        @override
        int get hashCode => robotGameQuestions.hashCode^robotGameMissions.hashCode;
        

                
        @override
        bool operator ==(Object other) =>
            identical(this, other) ||
            other is FllBlueprint &&
                runtimeType == other.runtimeType
                && robotGameQuestions == other.robotGameQuestions&& robotGameMissions == other.robotGameMissions;
        
            }
            