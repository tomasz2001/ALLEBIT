import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';
import type { IDL } from '@dfinity/candid';

export interface Debug { 'deb' : string, 'log' : string }
export interface Freedom {
  'cena' : string,
  'oferta' : string,
  'kontakt' : string,
  'cozaco' : string,
  'kapital' : string,
}
export interface _SERVICE {
  'oferta_add' : ActorMethod<[string, string, string, string, string], Debug>,
  'oferta_cek' : ActorMethod<[bigint], Freedom>,
  'test' : ActorMethod<[], Freedom>,
}
export declare const idlFactory: IDL.InterfaceFactory;
export declare const init: (args: { IDL: typeof IDL }) => IDL.Type[];
