%% -------------------------------------------------------------------
%%
%% bdberl: Constants used by the bdberl port driver.
%% Copyright (c) 2008 The Hive.  All rights reserved.
%%
%% -------------------------------------------------------------------

-define(CMD_NONE,       0).
-define(CMD_OPEN_DB,    1).
-define(CMD_CLOSE_DB,   2).
-define(CMD_TXN_BEGIN,  3).
-define(CMD_TXN_COMMIT, 4).
-define(CMD_TXN_ABORT,  5).
-define(CMD_GET,        6).
-define(CMD_PUT,        7).
-define(CMD_PUT_ATOMIC, 8).

-define(DB_TYPE_BTREE, 1).
-define(DB_TYPE_HASH,  2).

-define(STATUS_OK,    0).
-define(STATUS_ERROR, 1).

-define(ERROR_NONE,          0).
-define(ERROR_MAX_DBS,       -29000).           % System can not open any more databases
-define(ERROR_ASYNC_PENDING, -29001).           % Async operation already pending on this port
-define(ERROR_INVALID_DBREF, -29002).           % DbRef not currently opened by this port
-define(ERROR_TXN_OPEN,      -29003).           % Transaction already active on this port
-define(ERROR_NO_TXN,        -29004).           % No transaction open on this port

-define(ERROR_DB_LOCK_NOTGRANTED, -30993).      % Lock was busy and not granted
-define(ERROR_DB_LOCK_DEADLOCK,   -30994).      % Deadlock occurred

%% DB API flags
-define(DB_AGGRESSIVE,               16#00000001).
-define(DB_ARCH_ABS,                 16#00000001).
-define(DB_ARCH_DATA,                16#00000002).
-define(DB_ARCH_LOG,                 16#00000004).
-define(DB_ARCH_REMOVE,              16#00000008).
-define(DB_AUTO_COMMIT,              16#00000100).
-define(DB_CDB_ALLDB,                16#00000004).
-define(DB_CHKSUM,                   16#00000004).
-define(DB_CKP_INTERNAL,             16#00000002).
-define(DB_CREATE,                   16#00000001).
-define(DB_CXX_NO_EXCEPTIONS,        16#00000002).
-define(DB_DIRECT,                   16#00000002).
-define(DB_DIRECT_DB,                16#00000040).
-define(DB_DSYNC_DB,                 16#00000080).
-define(DB_DUP,                      16#00000008).
-define(DB_DUPSORT,                  16#00000002).
-define(DB_DURABLE_UNKNOWN,          16#00000020).
-define(DB_ENCRYPT,                  16#00000001).
-define(DB_ENCRYPT_AES,              16#00000001).
-define(DB_EXCL,                     16#00000400).
-define(DB_EXTENT,                   16#00000004).
-define(DB_FAST_STAT,                16#00000001).
-define(DB_FCNTL_LOCKING,            16#00001000).
-define(DB_FLUSH,                    16#00000001).
-define(DB_FORCE,                    16#00000001).
-define(DB_FOREIGN_ABORT,            16#00000001).
-define(DB_FOREIGN_CASCADE,          16#00000002).
-define(DB_FOREIGN_NULLIFY,          16#00000004).
-define(DB_FREELIST_ONLY,            16#00000001).
-define(DB_FREE_SPACE,               16#00000002).
-define(DB_IGNORE_LEASE,             16#00001000).
-define(DB_IMMUTABLE_KEY,            16#00000002).
-define(DB_INIT_CDB,                 16#00000020).
-define(DB_INIT_LOCK,                16#00000040).
-define(DB_INIT_LOG,                 16#00000080).
-define(DB_INIT_MPOOL,               16#00000100).
-define(DB_INIT_REP,                 16#00000200).
-define(DB_INIT_TXN,                 16#00000400).
-define(DB_INORDER,                  16#00000010).
-define(DB_JOIN_NOSORT,              16#00000001).
-define(DB_LOCKDOWN,                 16#00000800).
-define(DB_LOCK_NOWAIT,              16#00000001).
-define(DB_LOCK_RECORD,              16#00000002).
-define(DB_LOCK_SET_TIMEOUT,         16#00000004).
-define(DB_LOCK_SWITCH,              16#00000008).
-define(DB_LOCK_UPGRADE,             16#00000010).
-define(DB_LOG_AUTO_REMOVE,          16#00000004).
-define(DB_LOG_CHKPNT,               16#00000002).
-define(DB_LOG_COMMIT,               16#00000004).
-define(DB_LOG_DIRECT,               16#00000001).
-define(DB_LOG_DSYNC,                16#00000002).
-define(DB_LOG_IN_MEMORY,            16#00000008).
-define(DB_LOG_NOCOPY,               16#00000008).
-define(DB_LOG_NOT_DURABLE,          16#00000010).
-define(DB_LOG_WRNOSYNC,             16#00000020).
-define(DB_LOG_ZERO,                 16#00000010).
-define(DB_MPOOL_CREATE,             16#00000001).
-define(DB_MPOOL_DIRTY,              16#00000002).
-define(DB_MPOOL_DISCARD,            16#00000001).
-define(DB_MPOOL_EDIT,               16#00000004).
-define(DB_MPOOL_FREE,               16#00000008).
-define(DB_MPOOL_LAST,               16#00000010).
-define(DB_MPOOL_NEW,                16#00000020).
-define(DB_MPOOL_NOFILE,             16#00000001).
-define(DB_MPOOL_NOLOCK,             16#00000002).
-define(DB_MPOOL_UNLINK,             16#00000002).
-define(DB_MULTIPLE,                 16#00002000).
-define(DB_MULTIPLE_KEY,             16#00000100).
-define(DB_MULTIVERSION,             16#00000008).
-define(DB_MUTEX_ALLOCATED,          16#00000001).
-define(DB_MUTEX_LOCKED,             16#00000002).
-define(DB_MUTEX_LOGICAL_LOCK,       16#00000004).
-define(DB_MUTEX_PROCESS_ONLY,       16#00000008).
-define(DB_MUTEX_SELF_BLOCK,         16#00000010).
-define(DB_NOLOCKING,                16#00000200).
-define(DB_NOMMAP,                   16#00000010).
-define(DB_NOORDERCHK,               16#00000002).
-define(DB_NOPANIC,                  16#00000400).
-define(DB_NO_AUTO_COMMIT,           16#00002000).
-define(DB_ODDFILESIZE,              16#00000040).
-define(DB_ORDERCHKONLY,             16#00000004).
-define(DB_OVERWRITE,                16#00001000).
-define(DB_PANIC_ENVIRONMENT,        16#00002000).
-define(DB_PRINTABLE,                16#00000008).
-define(DB_PRIVATE,                  16#00001000).
-define(DB_PR_PAGE,                  16#00000010).
-define(DB_PR_RECOVERYTEST,          16#00000020).
-define(DB_RDONLY,                   16#00000080).
-define(DB_RDWRMASTER,               16#00004000).
-define(DB_READ_COMMITTED,           16#00000400).
-define(DB_READ_UNCOMMITTED,         16#00000200).
-define(DB_RECNUM,                   16#00000020).
-define(DB_RECOVER,                  16#00000010).
-define(DB_RECOVER_FATAL,            16#00002000).
-define(DB_REGION_INIT,              16#00004000).
-define(DB_REGISTER,                 16#00004000).
-define(DB_RENUMBER,                 16#00000040).
-define(DB_REPMGR_CONF_2SITE_STRICT, 16#00000001).
-define(DB_REPMGR_PEER,              16#00000001).
-define(DB_REP_ANYWHERE,             16#00000001).
-define(DB_REP_CLIENT,               16#00000001).
-define(DB_REP_CONF_BULK,            16#00000002).
-define(DB_REP_CONF_DELAYCLIENT,     16#00000004).
-define(DB_REP_CONF_LEASE,           16#00000008).
-define(DB_REP_CONF_NOAUTOINIT,      16#00000010).
-define(DB_REP_CONF_NOWAIT,          16#00000020).
-define(DB_REP_ELECTION,             16#00000004).
-define(DB_REP_MASTER,               16#00000002).
-define(DB_REP_NOBUFFER,             16#00000002).
-define(DB_REP_PERMANENT,            16#00000004).
-define(DB_REP_REREQUEST,            16#00000008).
-define(DB_REVSPLITOFF,              16#00000080).
-define(DB_RMW,                      16#00000800).
-define(DB_RPCCLIENT,                16#00000001).
-define(DB_SALVAGE,                  16#00000040).
-define(DB_SA_SKIPFIRSTKEY,          16#00010000).
-define(DB_SEQ_DEC,                  16#00000001).
-define(DB_SEQ_INC,                  16#00000002).
-define(DB_SEQ_RANGE_SET,            16#00000004).
-define(DB_SEQ_WRAP,                 16#00000008).
-define(DB_SEQ_WRAPPED,              16#00000010).
-define(DB_SET_LOCK_TIMEOUT,         16#00000002).
-define(DB_SET_TXN_NOW,              16#00000004).
-define(DB_SET_TXN_TIMEOUT,          16#00000001).
-define(DB_SNAPSHOT,                 16#00000100).
-define(DB_STAT_ALL,                 16#00000002).
-define(DB_STAT_CLEAR,               16#00000001).
-define(DB_STAT_LOCK_CONF,           16#00000004).
-define(DB_STAT_LOCK_LOCKERS,        16#00000008).
-define(DB_STAT_LOCK_OBJECTS,        16#00000010).
-define(DB_STAT_LOCK_PARAMS,         16#00000020).
-define(DB_STAT_MEMP_HASH,           16#00000004).
-define(DB_STAT_MEMP_NOERROR,        16#00000008).
-define(DB_STAT_SUBSYSTEM,           16#00000004).
-define(DB_ST_DUPOK,                 16#00000100).
-define(DB_ST_DUPSET,                16#00000200).
-define(DB_ST_DUPSORT,               16#00000400).
-define(DB_ST_IS_RECNO,              16#00000800).
-define(DB_ST_OVFL_LEAF,             16#00001000).
-define(DB_ST_RECNUM,                16#00002000).
-define(DB_ST_RELEN,                 16#00004000).
-define(DB_ST_TOPLEVEL,              16#00008000).
-define(DB_SYSTEM_MEM,               16#00008000).
-define(DB_THREAD,                   16#00000004).
-define(DB_TIME_NOTGRANTED,          16#00008000).
-define(DB_TRUNCATE,                 16#00008000).
-define(DB_TXN_NOSYNC,               16#00000001).
-define(DB_TXN_NOT_DURABLE,          16#00000200).
-define(DB_TXN_NOWAIT,               16#00000002).
-define(DB_TXN_SNAPSHOT,             16#00000800).
-define(DB_TXN_SYNC,                 16#00000004).
-define(DB_TXN_WAIT,                 16#00000008).
-define(DB_TXN_WRITE_NOSYNC,         16#00000020).
-define(DB_UNREF,                    16#00000080).
-define(DB_UPGRADE,                  16#00000001).
-define(DB_USE_ENVIRON,              16#00000002).
-define(DB_USE_ENVIRON_ROOT,         16#00000008).
-define(DB_VERB_DEADLOCK,            16#00000001).
-define(DB_VERB_FILEOPS,             16#00000002).
-define(DB_VERB_FILEOPS_ALL,         16#00000004).
-define(DB_VERB_RECOVERY,            16#00000008).
-define(DB_VERB_REGISTER,            16#00000010).
-define(DB_VERB_REPLICATION,         16#00000020).
-define(DB_VERB_REPMGR_CONNFAIL,     16#00000040).
-define(DB_VERB_REPMGR_MISC,         16#00000080).
-define(DB_VERB_REP_ELECT,           16#00000100).
-define(DB_VERB_REP_LEASE,           16#00000200).
-define(DB_VERB_REP_MISC,            16#00000400).
-define(DB_VERB_REP_MSGS,            16#00000800).
-define(DB_VERB_REP_SYNC,            16#00001000).
-define(DB_VERB_WAITSFOR,            16#00002000).
-define(DB_VERIFY,                   16#00000002).
-define(DB_WRITEOPEN,                16#00010000).
-define(DB_XA_CREATE,                16#00000800).
-define(DB_YIELDCPU,                 16#00010000).

%% DB access method and cursor operation values.  Each value is an operation
%% code to which additional bit flags are added.
-define(DB_AFTER,            1).
-define(DB_APPEND,           2).
-define(DB_BEFORE,           3).
-define(DB_CONSUME,          4).
-define(DB_CONSUME_WAIT,     5).
-define(DB_CURRENT,          6).
-define(DB_FIRST,            7).
-define(DB_GET_BOTH,         8).
-define(DB_GET_BOTHC,        9).
-define(DB_GET_BOTH_RANGE,   10).
-define(DB_GET_RECNO,        11).
-define(DB_JOIN_ITEM,        12).
-define(DB_KEYFIRST,         13).
-define(DB_KEYLAST,          14).
-define(DB_LAST,             15).
-define(DB_NEXT,             16).
-define(DB_NEXT_DUP,         17).
-define(DB_NEXT_NODUP,       18).
-define(DB_NODUPDATA,        19).
-define(DB_NOOVERWRITE,      20).
-define(DB_NOSYNC,           21).
-define(DB_POSITION,         22).
-define(DB_PREV,             23).
-define(DB_PREV_DUP,         24).
-define(DB_PREV_NODUP,       25).
-define(DB_SET,              26).
-define(DB_SET_RANGE,        27).
-define(DB_SET_RECNO,        28).
-define(DB_UPDATE_SECONDARY, 29).
-define(DB_WRITECURSOR,      30).
-define(DB_WRITELOCK,        31).