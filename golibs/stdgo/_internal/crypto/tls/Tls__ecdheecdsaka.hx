package stdgo._internal.crypto.tls;
function _ecdheECDSAKA(_version:stdgo.GoUInt16):stdgo._internal.crypto.tls.Tls_t_keyagreement.T_keyAgreement {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _isRSA : false, _version : _version } : stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_ecdhekeyagreement.T_ecdheKeyAgreement>));
    }
