#' Rf_mkCharLenCE
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('fnp')} \Sexpr[results=rd, stage=render]{c3po:::badge('c2r')} \Sexpr[results=rd, stage=render]{c3po:::badge('prot')}
#'
#' TODO
#'
#' @section Declaration:
#' ```
#' SEXP Rf_mkCharLenCE(const char *name, int len, cetype_t enc);
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @section Definition:
#' ```
#' SEXP mkCharLenCE(const char *name, int len, cetype_t enc)
#' {
#'   SEXP cval, chain;
#'   unsigned int hashcode;
#'   int need_enc;
#'   Rboolean embedNul = FALSE, is_ascii = TRUE;
#'
#'   switch(enc){
#'     case CE_NATIVE:
#'       case CE_UTF8:
#'       case CE_LATIN1:
#'       case CE_BYTES:
#'       case CE_SYMBOL:
#'       case CE_ANY:
#'       break;
#'     default:
#'       error(_("unknown encoding: %d"), enc);
#'   }
#'   for (int slen = 0; slen < len; slen++) {
#'     if ((unsigned int) name[slen] > 127) is_ascii = FALSE;
#'     if (!name[slen]) embedNul = TRUE;
#'   }
#'   if (embedNul) {
#'     SEXP c;
#'     /* This is tricky: we want to make a reasonable job of
#'     representing this string, and EncodeString() is the most
#'     comprehensive */
#'       c = allocCharsxp(len);
#'     memcpy(CHAR_RW(c), name, len);
#'     switch(enc) {
#'       case CE_UTF8: SET_UTF8(c); break;
#'       case CE_LATIN1: SET_LATIN1(c); break;
#'       case CE_BYTES: SET_BYTES(c); break;
#'       default: break;
#'     }
#'     if (is_ascii) SET_ASCII(c);
#'     error(_("embedded nul in string: '%s'"),
#'            EncodeString(c, 0, 0, Rprt_adj_none));
#'   }
#'
#'   if (enc && is_ascii) enc = CE_NATIVE;
#'   switch(enc) {
#'     case CE_UTF8: need_enc = UTF8_MASK; break;
#'     case CE_LATIN1: need_enc = LATIN1_MASK; break;
#'     case CE_BYTES: need_enc = BYTES_MASK; break;
#'     default: need_enc = 0;
#'   }
#'
#'   hashcode = char_hash(name, len) & char_hash_mask;
#'
#'   /* Search for a cached value */
#'     cval = R_NilValue;
#'   chain = VECTOR_ELT(R_StringHash, hashcode);
#'   for (; !ISNULL(chain) ; chain = CXTAIL(chain)) {
#'     SEXP val = CXHEAD(chain);
#'     if (TYPEOF(val) != CHARSXP) break; /* sanity check */
#'       if (need_enc == (ENC_KNOWN(val) | IS_BYTES(val)) &&
#'           LENGTH(val) == len &&  /* quick pretest */
#'           (!len || (memcmp(CHAR(val), name, len) == 0))) { // called with len = 0
#'           cval = val;
#'           break;
#'       }
#'   }
#'   if (cval == R_NilValue) {
#'     /* no cached value; need to allocate one and add to the cache */
#'       PROTECT(cval = allocCharsxp(len));
#'     memcpy(CHAR_RW(cval), name, len);
#'     switch(enc) {
#'       case CE_NATIVE:
#'         break;          /* don't set encoding */
#'         case CE_UTF8:
#'             SET_UTF8(cval);
#'             break;
#'         case CE_LATIN1:
#'             SET_LATIN1(cval);
#'             break;
#'         case CE_BYTES:
#'             SET_BYTES(cval);
#'             break;
#'         default:
#'             error("unknown encoding mask: %d", enc);
#'         }
#'         if (is_ascii) SET_ASCII(cval);
#'         SET_CACHED(cval);  /* Mark it */
#'         /* add the new value to the cache */
#'         chain = VECTOR_ELT(R_StringHash, hashcode);
#'         if (ISNULL(chain))
#'             SET_HASHPRI(R_StringHash, HASHPRI(R_StringHash) + 1);
#'         /* this is a destrictive modification */
#'         chain = SET_CXTAIL(cval, chain);
#'         SET_VECTOR_ELT(R_StringHash, hashcode, chain);
#'
#'         /* resize the hash table if necessary with the new entry still
#'            protected.
#'            Maximum possible power of two is 2^30 for a VECSXP.
#'            FIXME: this has changed with long vectors.
#'         */
#'         if (R_HashSizeCheck(R_StringHash)
#'             && char_hash_size < 1073741824 /* 2^30 */)
#'             R_StringHash_resize(char_hash_size * 2);
#'
#'         UNPROTECT(1);
#'     }
#'     return cval;
#' }
#' ```
#' In [envir.c](https://github.com/wch/r-source/blob/trunk/src/main/envir.c).
#'
#' @param name a pointer \code{const char *}
#' @param len an int
#' @param enc a cetype_t object
#'
#' @return A [SEXP] object, namely TODO...
#'
#' @examples
#' # TODO
#'
#' @name Rf_mkCharLenCE
#'
NULL