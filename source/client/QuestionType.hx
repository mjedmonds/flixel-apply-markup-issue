package client;

// @:jsonStringify(function(t:common.MessageType.MessageType) return {type: t})
// abstract MessageType(String)
// This class provides validated message types between the server and client
class QuestionType
{
	public static inline var valueFunctionType:String = "valueFunctionQuestion";
	public static inline var actionPredictionType:String = "actionPredictionQuestion";
	public static inline var explanationType:String = "explanation";

	public static function isValid(str:String)
	{
		return str == valueFunctionType || str == actionPredictionType || str == explanationType;
	}
}
