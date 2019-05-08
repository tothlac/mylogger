-module(log_proba_logger).

-export([log/1]).

-spec log(Msg) -> ok when
    Msg :: {'WEPReceivedMessage', {From :: binary(), Message :: integer()}}.
log({'ReceivedMessage', {From, Message}}) ->
  io:format("Received message from: ~s, message: ~B", [From, Message]).
