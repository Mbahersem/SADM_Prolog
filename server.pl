:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_json)).
:- use_module(library(http/http_parameters)).
:- use_module(library(http/http_client)).
:- use_module(library(http/http_error)).

:- http_handler('/event', event_handler, []).

:- initialization(server(8080)).

server(Port) :-
    http_server(http_dispatch, [port(Port)]).

event_handler(Request) :-
    http_read_json_dict(Request, Event),
    process_event(Event, Response),
    reply_json_dict(Response).

process_event(Event, Response) :-
    write(Event.question),
    Response = _{answer: 'Manant...'}.