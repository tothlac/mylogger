-module(log_proba_logger).

-export([log/1]).

-spec log(Msg) -> ok when
    Msg :: #{type => 'ReceivedMessage', from => binary(), count => 1..10}.
log(#{type := 'ReceivedMessage', from := From, count := Count})  ->
  io:format("Received message from: ~s, message: ~B", [From, Count]).
