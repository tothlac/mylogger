-module(log_proba_logger).

-export([log/1]).

%-spec log(Msg) -> ok when
%    Msg :: {'ReceivedMessage', {From :: binary(), Message :: integer()}}.
%log({'ReceivedMessage', {From, Message}})  ->
%  io:format("Received message from: ~s, message: ~B", [From, Message]).
-spec log(Msg) -> ok when
    Msg :: #{type => 'ReceivedMessage', from => binary(), message => float(2.0, 3.0)}.
log(#{type := 'ReceivedMessage', from := From, message := Message})  ->
  io:format("Received message from: ~s, message: ~B", [From, Message]).
