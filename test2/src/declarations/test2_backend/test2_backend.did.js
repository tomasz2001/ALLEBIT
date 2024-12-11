export const idlFactory = ({ IDL }) => {
  const Debug = IDL.Record({ 'deb' : IDL.Text, 'log' : IDL.Text });
  const Freedom = IDL.Record({
    'cena' : IDL.Text,
    'oferta' : IDL.Text,
    'kontakt' : IDL.Text,
    'cozaco' : IDL.Text,
    'kapital' : IDL.Text,
  });
  return IDL.Service({
    'oferta_add' : IDL.Func(
        [IDL.Text, IDL.Text, IDL.Text, IDL.Text, IDL.Text],
        [Debug],
        [],
      ),
    'oferta_cek' : IDL.Func([IDL.Nat], [Freedom], ['query']),
    'test' : IDL.Func([], [Freedom], ['query']),
  });
};
export const init = ({ IDL }) => { return []; };
