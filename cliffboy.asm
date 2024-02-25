    processor 6502

    include "vcs.h"
    include "macro.h"

    seg code
    org $f000

Start:
    sei
    cld
    ldx #$ff
    txs
    inx
    lda #0

LoopClear:
    dex
    sta $0,x
    bne LoopClear

    org $fffc
    .word Start
    .word Start
