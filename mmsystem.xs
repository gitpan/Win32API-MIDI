/*
 * mmsystem.xs :
 *
 * $Id: mmsystem.xs,v 1.1 2002-09-14 00:08:24-05 hiroo Exp $
 *
 * This file is generated by the following way on Cygwin environment.
 * 	grep '#define' /usr/include/w32api/mmsystem.h |\
 *	grep -e 'MOM\|MIM\|MIDI\|MMSYSERR\|CALLBACK\|MEVT' > foo.h
 * h2xs foo.h
 * vi Foo/Foo.xs # remove header and tailer
 * mv Foo/Foo.xs mmsystem.xs
 */

#if 0
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <foo>
#endif

static int
not_here(char *s)
{
    croak("%s not implemented on this architecture", s);
    return -1;
}

static double
constant_CALLBACK_T(char *name, int len, int arg)
{
    switch (name[10 + 0]) {
    case 'A':
	if (strEQ(name + 10, "ASK")) {	/* CALLBACK_T removed */
#ifdef CALLBACK_TASK
	    return CALLBACK_TASK;
#else
	    goto not_there;
#endif
	}
    case 'H':
	if (strEQ(name + 10, "HREAD")) {	/* CALLBACK_T removed */
#ifdef CALLBACK_THREAD
	    return CALLBACK_THREAD;
#else
	    goto not_there;
#endif
	}
    case 'Y':
	if (strEQ(name + 10, "YPEMASK")) {	/* CALLBACK_T removed */
#ifdef CALLBACK_TYPEMASK
	    return CALLBACK_TYPEMASK;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_C(char *name, int len, int arg)
{
    if (1 + 8 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[1 + 8]) {
    case 'E':
	if (strEQ(name + 1, "ALLBACK_EVENT")) {	/* C removed */
#ifdef CALLBACK_EVENT
	    return CALLBACK_EVENT;
#else
	    goto not_there;
#endif
	}
    case 'F':
	if (strEQ(name + 1, "ALLBACK_FUNCTION")) {	/* C removed */
#ifdef CALLBACK_FUNCTION
	    return CALLBACK_FUNCTION;
#else
	    goto not_there;
#endif
	}
    case 'N':
	if (strEQ(name + 1, "ALLBACK_NULL")) {	/* C removed */
#ifdef CALLBACK_NULL
	    return CALLBACK_NULL;
#else
	    goto not_there;
#endif
	}
    case 'T':
	if (!strnEQ(name + 1,"ALLBACK_", 8))
	    break;
	return constant_CALLBACK_T(name, len, arg);
    case 'W':
	if (strEQ(name + 1, "ALLBACK_WINDOW")) {	/* C removed */
#ifdef CALLBACK_WINDOW
	    return CALLBACK_WINDOW;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_TIME_CALLBACK_E(char *name, int len, int arg)
{
    if (15 + 5 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[15 + 5]) {
    case 'P':
	if (strEQ(name + 15, "VENT_PULSE")) {	/* TIME_CALLBACK_E removed */
#ifdef TIME_CALLBACK_EVENT_PULSE
	    return TIME_CALLBACK_EVENT_PULSE;
#else
	    goto not_there;
#endif
	}
    case 'S':
	if (strEQ(name + 15, "VENT_SET")) {	/* TIME_CALLBACK_E removed */
#ifdef TIME_CALLBACK_EVENT_SET
	    return TIME_CALLBACK_EVENT_SET;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_TIME_C(char *name, int len, int arg)
{
    if (6 + 8 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[6 + 8]) {
    case 'E':
	if (!strnEQ(name + 6,"ALLBACK_", 8))
	    break;
	return constant_TIME_CALLBACK_E(name, len, arg);
    case 'F':
	if (strEQ(name + 6, "ALLBACK_FUNCTION")) {	/* TIME_C removed */
#ifdef TIME_CALLBACK_FUNCTION
	    return TIME_CALLBACK_FUNCTION;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_T(char *name, int len, int arg)
{
    if (1 + 4 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[1 + 4]) {
    case 'C':
	if (!strnEQ(name + 1,"IME_", 4))
	    break;
	return constant_TIME_C(name, len, arg);
    case 'M':
	if (strEQ(name + 1, "IME_MIDI")) {	/* T removed */
#ifdef TIME_MIDI
	    return TIME_MIDI;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MOM(char *name, int len, int arg)
{
    if (3 + 1 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[3 + 1]) {
    case 'C':
	if (strEQ(name + 3, "_CLOSE")) {	/* MOM removed */
#ifdef MOM_CLOSE
	    return MOM_CLOSE;
#else
	    goto not_there;
#endif
	}
    case 'D':
	if (strEQ(name + 3, "_DONE")) {	/* MOM removed */
#ifdef MOM_DONE
	    return MOM_DONE;
#else
	    goto not_there;
#endif
	}
    case 'O':
	if (strEQ(name + 3, "_OPEN")) {	/* MOM removed */
#ifdef MOM_OPEN
	    return MOM_OPEN;
#else
	    goto not_there;
#endif
	}
    case 'P':
	if (strEQ(name + 3, "_POSITIONCB")) {	/* MOM removed */
#ifdef MOM_POSITIONCB
	    return MOM_POSITIONCB;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MO(char *name, int len, int arg)
{
    switch (name[2 + 0]) {
    case 'D':
	if (strEQ(name + 2, "D_MIDIPORT")) {	/* MO removed */
#ifdef MOD_MIDIPORT
	    return MOD_MIDIPORT;
#else
	    goto not_there;
#endif
	}
    case 'M':
	return constant_MOM(name, len, arg);
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIXER_OBJECTF_H(char *name, int len, int arg)
{
    if (15 + 4 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[15 + 4]) {
    case 'I':
	if (strEQ(name + 15, "MIDIIN")) {	/* MIXER_OBJECTF_H removed */
#ifdef MIXER_OBJECTF_HMIDIIN
	    return MIXER_OBJECTF_HMIDIIN;
#else
	    goto not_there;
#endif
	}
    case 'O':
	if (strEQ(name + 15, "MIDIOUT")) {	/* MIXER_OBJECTF_H removed */
#ifdef MIXER_OBJECTF_HMIDIOUT
	    return MIXER_OBJECTF_HMIDIOUT;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIXER_OBJECTF_M(char *name, int len, int arg)
{
    if (15 + 3 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[15 + 3]) {
    case 'I':
	if (strEQ(name + 15, "IDIIN")) {	/* MIXER_OBJECTF_M removed */
#ifdef MIXER_OBJECTF_MIDIIN
	    return MIXER_OBJECTF_MIDIIN;
#else
	    goto not_there;
#endif
	}
    case 'O':
	if (strEQ(name + 15, "IDIOUT")) {	/* MIXER_OBJECTF_M removed */
#ifdef MIXER_OBJECTF_MIDIOUT
	    return MIXER_OBJECTF_MIDIOUT;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIXER_(char *name, int len, int arg)
{
    if (6 + 8 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[6 + 8]) {
    case 'H':
	if (!strnEQ(name + 6,"OBJECTF_", 8))
	    break;
	return constant_MIXER_OBJECTF_H(name, len, arg);
    case 'M':
	if (!strnEQ(name + 6,"OBJECTF_", 8))
	    break;
	return constant_MIXER_OBJECTF_M(name, len, arg);
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIXERL(char *name, int len, int arg)
{
    if (6 + 19 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[6 + 19]) {
    case 'I':
	if (strEQ(name + 6, "INE_TARGETTYPE_MIDIIN")) {	/* MIXERL removed */
#ifdef MIXERLINE_TARGETTYPE_MIDIIN
	    return MIXERLINE_TARGETTYPE_MIDIIN;
#else
	    goto not_there;
#endif
	}
    case 'O':
	if (strEQ(name + 6, "INE_TARGETTYPE_MIDIOUT")) {	/* MIXERL removed */
#ifdef MIXERLINE_TARGETTYPE_MIDIOUT
	    return MIXERLINE_TARGETTYPE_MIDIOUT;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIX(char *name, int len, int arg)
{
    if (3 + 2 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[3 + 2]) {
    case 'L':
	if (!strnEQ(name + 3,"ER", 2))
	    break;
	return constant_MIXERL(name, len, arg);
    case '_':
	if (!strnEQ(name + 3,"ER", 2))
	    break;
	return constant_MIXER_(name, len, arg);
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIDI_C(char *name, int len, int arg)
{
    if (6 + 5 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[6 + 5]) {
    case 'A':
	if (strEQ(name + 6, "ACHE_ALL")) {	/* MIDI_C removed */
#ifdef MIDI_CACHE_ALL
	    return MIDI_CACHE_ALL;
#else
	    goto not_there;
#endif
	}
    case 'B':
	if (strEQ(name + 6, "ACHE_BESTFIT")) {	/* MIDI_C removed */
#ifdef MIDI_CACHE_BESTFIT
	    return MIDI_CACHE_BESTFIT;
#else
	    goto not_there;
#endif
	}
    case 'Q':
	if (strEQ(name + 6, "ACHE_QUERY")) {	/* MIDI_C removed */
#ifdef MIDI_CACHE_QUERY
	    return MIDI_CACHE_QUERY;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIDI_(char *name, int len, int arg)
{
    switch (name[5 + 0]) {
    case 'C':
	return constant_MIDI_C(name, len, arg);
    case 'I':
	if (strEQ(name + 5, "IO_STATUS")) {	/* MIDI_ removed */
#ifdef MIDI_IO_STATUS
	    return MIDI_IO_STATUS;
#else
	    goto not_there;
#endif
	}
    case 'M':
	if (strEQ(name + 5, "MAPPER")) {	/* MIDI_ removed */
#ifdef MIDI_MAPPER
	    return MIDI_MAPPER;
#else
	    goto not_there;
#endif
	}
    case 'U':
	if (strEQ(name + 5, "UNCACHE")) {	/* MIDI_ removed */
#ifdef MIDI_UNCACHE
	    return MIDI_UNCACHE;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIDIPROP_T(char *name, int len, int arg)
{
    switch (name[10 + 0]) {
    case 'E':
	if (strEQ(name + 10, "EMPO")) {	/* MIDIPROP_T removed */
#ifdef MIDIPROP_TEMPO
	    return MIDIPROP_TEMPO;
#else
	    goto not_there;
#endif
	}
    case 'I':
	if (strEQ(name + 10, "IMEDIV")) {	/* MIDIPROP_T removed */
#ifdef MIDIPROP_TIMEDIV
	    return MIDIPROP_TIMEDIV;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIDIPR(char *name, int len, int arg)
{
    if (6 + 3 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[6 + 3]) {
    case 'G':
	if (strEQ(name + 6, "OP_GET")) {	/* MIDIPR removed */
#ifdef MIDIPROP_GET
	    return MIDIPROP_GET;
#else
	    goto not_there;
#endif
	}
    case 'S':
	if (strEQ(name + 6, "OP_SET")) {	/* MIDIPR removed */
#ifdef MIDIPROP_SET
	    return MIDIPROP_SET;
#else
	    goto not_there;
#endif
	}
    case 'T':
	if (!strnEQ(name + 6,"OP_", 3))
	    break;
	return constant_MIDIPROP_T(name, len, arg);
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIDIP(char *name, int len, int arg)
{
    switch (name[5 + 0]) {
    case 'A':
	if (strEQ(name + 5, "ATCHSIZE")) {	/* MIDIP removed */
#ifdef MIDIPATCHSIZE
	    return MIDIPATCHSIZE;
#else
	    goto not_there;
#endif
	}
    case 'R':
	return constant_MIDIPR(name, len, arg);
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIDIC(char *name, int len, int arg)
{
    if (5 + 4 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[5 + 4]) {
    case 'C':
	if (strEQ(name + 5, "APS_CACHE")) {	/* MIDIC removed */
#ifdef MIDICAPS_CACHE
	    return MIDICAPS_CACHE;
#else
	    goto not_there;
#endif
	}
    case 'L':
	if (strEQ(name + 5, "APS_LRVOLUME")) {	/* MIDIC removed */
#ifdef MIDICAPS_LRVOLUME
	    return MIDICAPS_LRVOLUME;
#else
	    goto not_there;
#endif
	}
    case 'S':
	if (strEQ(name + 5, "APS_STREAM")) {	/* MIDIC removed */
#ifdef MIDICAPS_STREAM
	    return MIDICAPS_STREAM;
#else
	    goto not_there;
#endif
	}
    case 'V':
	if (strEQ(name + 5, "APS_VOLUME")) {	/* MIDIC removed */
#ifdef MIDICAPS_VOLUME
	    return MIDICAPS_VOLUME;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIDIERR_N(char *name, int len, int arg)
{
    if (9 + 1 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[9 + 1]) {
    case 'D':
	if (strEQ(name + 9, "ODEVICE")) {	/* MIDIERR_N removed */
#ifdef MIDIERR_NODEVICE
	    return MIDIERR_NODEVICE;
#else
	    goto not_there;
#endif
	}
    case 'M':
	if (strEQ(name + 9, "OMAP")) {	/* MIDIERR_N removed */
#ifdef MIDIERR_NOMAP
	    return MIDIERR_NOMAP;
#else
	    goto not_there;
#endif
	}
    case 'T':
	if (strEQ(name + 9, "OTREADY")) {	/* MIDIERR_N removed */
#ifdef MIDIERR_NOTREADY
	    return MIDIERR_NOTREADY;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIDIERR_B(char *name, int len, int arg)
{
    if (9 + 1 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[9 + 1]) {
    case 'D':
	if (strEQ(name + 9, "ADOPENMODE")) {	/* MIDIERR_B removed */
#ifdef MIDIERR_BADOPENMODE
	    return MIDIERR_BADOPENMODE;
#else
	    goto not_there;
#endif
	}
    case 'S':
	if (strEQ(name + 9, "ASE")) {	/* MIDIERR_B removed */
#ifdef MIDIERR_BASE
	    return MIDIERR_BASE;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIDIE(char *name, int len, int arg)
{
    if (5 + 3 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[5 + 3]) {
    case 'B':
	if (!strnEQ(name + 5,"RR_", 3))
	    break;
	return constant_MIDIERR_B(name, len, arg);
    case 'D':
	if (strEQ(name + 5, "RR_DONT_CONTINUE")) {	/* MIDIE removed */
#ifdef MIDIERR_DONT_CONTINUE
	    return MIDIERR_DONT_CONTINUE;
#else
	    goto not_there;
#endif
	}
    case 'I':
	if (strEQ(name + 5, "RR_INVALIDSETUP")) {	/* MIDIE removed */
#ifdef MIDIERR_INVALIDSETUP
	    return MIDIERR_INVALIDSETUP;
#else
	    goto not_there;
#endif
	}
    case 'L':
	if (strEQ(name + 5, "RR_LASTERROR")) {	/* MIDIE removed */
#ifdef MIDIERR_LASTERROR
	    return MIDIERR_LASTERROR;
#else
	    goto not_there;
#endif
	}
    case 'N':
	if (!strnEQ(name + 5,"RR_", 3))
	    break;
	return constant_MIDIERR_N(name, len, arg);
    case 'S':
	if (strEQ(name + 5, "RR_STILLPLAYING")) {	/* MIDIE removed */
#ifdef MIDIERR_STILLPLAYING
	    return MIDIERR_STILLPLAYING;
#else
	    goto not_there;
#endif
	}
    case 'U':
	if (strEQ(name + 5, "RR_UNPREPARED")) {	/* MIDIE removed */
#ifdef MIDIERR_UNPREPARED
	    return MIDIERR_UNPREPARED;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MID(char *name, int len, int arg)
{
    if (3 + 1 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[3 + 1]) {
    case 'C':
	if (!strnEQ(name + 3,"I", 1))
	    break;
	return constant_MIDIC(name, len, arg);
    case 'E':
	if (!strnEQ(name + 3,"I", 1))
	    break;
	return constant_MIDIE(name, len, arg);
    case 'M':
	if (strEQ(name + 3, "IMAPPER")) {	/* MID removed */
#ifdef MIDIMAPPER
	    return MIDIMAPPER;
#else
	    goto not_there;
#endif
	}
    case 'P':
	if (!strnEQ(name + 3,"I", 1))
	    break;
	return constant_MIDIP(name, len, arg);
    case 'S':
	if (strEQ(name + 3, "ISTRM_ERROR")) {	/* MID removed */
#ifdef MIDISTRM_ERROR
	    return MIDISTRM_ERROR;
#else
	    goto not_there;
#endif
	}
    case '_':
	if (!strnEQ(name + 3,"I", 1))
	    break;
	return constant_MIDI_(name, len, arg);
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIM_L(char *name, int len, int arg)
{
    if (5 + 3 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[5 + 3]) {
    case 'D':
	if (strEQ(name + 5, "ONGDATA")) {	/* MIM_L removed */
#ifdef MIM_LONGDATA
	    return MIM_LONGDATA;
#else
	    goto not_there;
#endif
	}
    case 'E':
	if (strEQ(name + 5, "ONGERROR")) {	/* MIM_L removed */
#ifdef MIM_LONGERROR
	    return MIM_LONGERROR;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MIM(char *name, int len, int arg)
{
    if (3 + 1 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[3 + 1]) {
    case 'C':
	if (strEQ(name + 3, "_CLOSE")) {	/* MIM removed */
#ifdef MIM_CLOSE
	    return MIM_CLOSE;
#else
	    goto not_there;
#endif
	}
    case 'D':
	if (strEQ(name + 3, "_DATA")) {	/* MIM removed */
#ifdef MIM_DATA
	    return MIM_DATA;
#else
	    goto not_there;
#endif
	}
    case 'E':
	if (strEQ(name + 3, "_ERROR")) {	/* MIM removed */
#ifdef MIM_ERROR
	    return MIM_ERROR;
#else
	    goto not_there;
#endif
	}
    case 'L':
	if (!strnEQ(name + 3,"_", 1))
	    break;
	return constant_MIM_L(name, len, arg);
    case 'M':
	if (strEQ(name + 3, "_MOREDATA")) {	/* MIM removed */
#ifdef MIM_MOREDATA
	    return MIM_MOREDATA;
#else
	    goto not_there;
#endif
	}
    case 'O':
	if (strEQ(name + 3, "_OPEN")) {	/* MIM removed */
#ifdef MIM_OPEN
	    return MIM_OPEN;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MI(char *name, int len, int arg)
{
    switch (name[2 + 0]) {
    case 'D':
	return constant_MID(name, len, arg);
    case 'M':
	return constant_MIM(name, len, arg);
    case 'X':
	return constant_MIX(name, len, arg);
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MC(char *name, int len, int arg)
{
    if (2 + 1 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[2 + 1]) {
    case 'E':
	if (strEQ(name + 2, "IERR_SEQ_NOMIDIPRESENT")) {	/* MC removed */
#ifdef MCIERR_SEQ_NOMIDIPRESENT
	    return MCIERR_SEQ_NOMIDIPRESENT;
#else
	    goto not_there;
#endif
	}
    case '_':
	if (strEQ(name + 2, "I_SEQ_MIDI")) {	/* MC removed */
#ifdef MCI_SEQ_MIDI
	    return MCI_SEQ_MIDI;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MM_MO(char *name, int len, int arg)
{
    if (5 + 2 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[5 + 2]) {
    case 'C':
	if (strEQ(name + 5, "M_CLOSE")) {	/* MM_MO removed */
#ifdef MM_MOM_CLOSE
	    return MM_MOM_CLOSE;
#else
	    goto not_there;
#endif
	}
    case 'D':
	if (strEQ(name + 5, "M_DONE")) {	/* MM_MO removed */
#ifdef MM_MOM_DONE
	    return MM_MOM_DONE;
#else
	    goto not_there;
#endif
	}
    case 'O':
	if (strEQ(name + 5, "M_OPEN")) {	/* MM_MO removed */
#ifdef MM_MOM_OPEN
	    return MM_MOM_OPEN;
#else
	    goto not_there;
#endif
	}
    case 'P':
	if (strEQ(name + 5, "M_POSITIONCB")) {	/* MM_MO removed */
#ifdef MM_MOM_POSITIONCB
	    return MM_MOM_POSITIONCB;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MM_MIM_L(char *name, int len, int arg)
{
    if (8 + 3 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[8 + 3]) {
    case 'D':
	if (strEQ(name + 8, "ONGDATA")) {	/* MM_MIM_L removed */
#ifdef MM_MIM_LONGDATA
	    return MM_MIM_LONGDATA;
#else
	    goto not_there;
#endif
	}
    case 'E':
	if (strEQ(name + 8, "ONGERROR")) {	/* MM_MIM_L removed */
#ifdef MM_MIM_LONGERROR
	    return MM_MIM_LONGERROR;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MM_MI(char *name, int len, int arg)
{
    if (5 + 2 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[5 + 2]) {
    case 'C':
	if (strEQ(name + 5, "M_CLOSE")) {	/* MM_MI removed */
#ifdef MM_MIM_CLOSE
	    return MM_MIM_CLOSE;
#else
	    goto not_there;
#endif
	}
    case 'D':
	if (strEQ(name + 5, "M_DATA")) {	/* MM_MI removed */
#ifdef MM_MIM_DATA
	    return MM_MIM_DATA;
#else
	    goto not_there;
#endif
	}
    case 'E':
	if (strEQ(name + 5, "M_ERROR")) {	/* MM_MI removed */
#ifdef MM_MIM_ERROR
	    return MM_MIM_ERROR;
#else
	    goto not_there;
#endif
	}
    case 'L':
	if (!strnEQ(name + 5,"M_", 2))
	    break;
	return constant_MM_MIM_L(name, len, arg);
    case 'M':
	if (strEQ(name + 5, "M_MOREDATA")) {	/* MM_MI removed */
#ifdef MM_MIM_MOREDATA
	    return MM_MIM_MOREDATA;
#else
	    goto not_there;
#endif
	}
    case 'O':
	if (strEQ(name + 5, "M_OPEN")) {	/* MM_MI removed */
#ifdef MM_MIM_OPEN
	    return MM_MIM_OPEN;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MM_(char *name, int len, int arg)
{
    if (3 + 1 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[3 + 1]) {
    case 'I':
	if (!strnEQ(name + 3,"M", 1))
	    break;
	return constant_MM_MI(name, len, arg);
    case 'O':
	if (!strnEQ(name + 3,"M", 1))
	    break;
	return constant_MM_MO(name, len, arg);
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MMSYSERR_NOT(char *name, int len, int arg)
{
    switch (name[12 + 0]) {
    case 'E':
	if (strEQ(name + 12, "ENABLED")) {	/* MMSYSERR_NOT removed */
#ifdef MMSYSERR_NOTENABLED
	    return MMSYSERR_NOTENABLED;
#else
	    goto not_there;
#endif
	}
    case 'S':
	if (strEQ(name + 12, "SUPPORTED")) {	/* MMSYSERR_NOT removed */
#ifdef MMSYSERR_NOTSUPPORTED
	    return MMSYSERR_NOTSUPPORTED;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MMSYSERR_NOD(char *name, int len, int arg)
{
    if (12 + 5 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[12 + 5]) {
    case '\0':
	if (strEQ(name + 12, "RIVER")) {	/* MMSYSERR_NOD removed */
#ifdef MMSYSERR_NODRIVER
	    return MMSYSERR_NODRIVER;
#else
	    goto not_there;
#endif
	}
    case 'C':
	if (strEQ(name + 12, "RIVERCB")) {	/* MMSYSERR_NOD removed */
#ifdef MMSYSERR_NODRIVERCB
	    return MMSYSERR_NODRIVERCB;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MMSYSERR_N(char *name, int len, int arg)
{
    if (10 + 1 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[10 + 1]) {
    case 'D':
	if (!strnEQ(name + 10,"O", 1))
	    break;
	return constant_MMSYSERR_NOD(name, len, arg);
    case 'E':
	if (strEQ(name + 10, "OERROR")) {	/* MMSYSERR_N removed */
#ifdef MMSYSERR_NOERROR
	    return MMSYSERR_NOERROR;
#else
	    goto not_there;
#endif
	}
    case 'M':
	if (strEQ(name + 10, "OMEM")) {	/* MMSYSERR_N removed */
#ifdef MMSYSERR_NOMEM
	    return MMSYSERR_NOMEM;
#else
	    goto not_there;
#endif
	}
    case 'T':
	if (!strnEQ(name + 10,"O", 1))
	    break;
	return constant_MMSYSERR_NOT(name, len, arg);
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MMSYSERR_BADD(char *name, int len, int arg)
{
    switch (name[13 + 0]) {
    case 'B':
	if (strEQ(name + 13, "B")) {	/* MMSYSERR_BADD removed */
#ifdef MMSYSERR_BADDB
	    return MMSYSERR_BADDB;
#else
	    goto not_there;
#endif
	}
    case 'E':
	if (strEQ(name + 13, "EVICEID")) {	/* MMSYSERR_BADD removed */
#ifdef MMSYSERR_BADDEVICEID
	    return MMSYSERR_BADDEVICEID;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MMSYSERR_BAD(char *name, int len, int arg)
{
    switch (name[12 + 0]) {
    case 'D':
	return constant_MMSYSERR_BADD(name, len, arg);
    case 'E':
	if (strEQ(name + 12, "ERRNUM")) {	/* MMSYSERR_BAD removed */
#ifdef MMSYSERR_BADERRNUM
	    return MMSYSERR_BADERRNUM;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MMSYSERR_B(char *name, int len, int arg)
{
    if (10 + 1 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[10 + 1]) {
    case 'D':
	if (!strnEQ(name + 10,"A", 1))
	    break;
	return constant_MMSYSERR_BAD(name, len, arg);
    case 'S':
	if (strEQ(name + 10, "ASE")) {	/* MMSYSERR_B removed */
#ifdef MMSYSERR_BASE
	    return MMSYSERR_BASE;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MMSYSERR_I(char *name, int len, int arg)
{
    if (10 + 4 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[10 + 4]) {
    case 'F':
	if (strEQ(name + 10, "NVALFLAG")) {	/* MMSYSERR_I removed */
#ifdef MMSYSERR_INVALFLAG
	    return MMSYSERR_INVALFLAG;
#else
	    goto not_there;
#endif
	}
    case 'H':
	if (strEQ(name + 10, "NVALHANDLE")) {	/* MMSYSERR_I removed */
#ifdef MMSYSERR_INVALHANDLE
	    return MMSYSERR_INVALHANDLE;
#else
	    goto not_there;
#endif
	}
    case 'I':
	if (strEQ(name + 10, "NVALIDALIAS")) {	/* MMSYSERR_I removed */
#ifdef MMSYSERR_INVALIDALIAS
	    return MMSYSERR_INVALIDALIAS;
#else
	    goto not_there;
#endif
	}
    case 'P':
	if (strEQ(name + 10, "NVALPARAM")) {	/* MMSYSERR_I removed */
#ifdef MMSYSERR_INVALPARAM
	    return MMSYSERR_INVALPARAM;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MMS(char *name, int len, int arg)
{
    if (3 + 6 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[3 + 6]) {
    case 'A':
	if (strEQ(name + 3, "YSERR_ALLOCATED")) {	/* MMS removed */
#ifdef MMSYSERR_ALLOCATED
	    return MMSYSERR_ALLOCATED;
#else
	    goto not_there;
#endif
	}
    case 'B':
	if (!strnEQ(name + 3,"YSERR_", 6))
	    break;
	return constant_MMSYSERR_B(name, len, arg);
    case 'D':
	if (strEQ(name + 3, "YSERR_DELETEERROR")) {	/* MMS removed */
#ifdef MMSYSERR_DELETEERROR
	    return MMSYSERR_DELETEERROR;
#else
	    goto not_there;
#endif
	}
    case 'E':
	if (strEQ(name + 3, "YSERR_ERROR")) {	/* MMS removed */
#ifdef MMSYSERR_ERROR
	    return MMSYSERR_ERROR;
#else
	    goto not_there;
#endif
	}
    case 'H':
	if (strEQ(name + 3, "YSERR_HANDLEBUSY")) {	/* MMS removed */
#ifdef MMSYSERR_HANDLEBUSY
	    return MMSYSERR_HANDLEBUSY;
#else
	    goto not_there;
#endif
	}
    case 'I':
	if (!strnEQ(name + 3,"YSERR_", 6))
	    break;
	return constant_MMSYSERR_I(name, len, arg);
    case 'K':
	if (strEQ(name + 3, "YSERR_KEYNOTFOUND")) {	/* MMS removed */
#ifdef MMSYSERR_KEYNOTFOUND
	    return MMSYSERR_KEYNOTFOUND;
#else
	    goto not_there;
#endif
	}
    case 'L':
	if (strEQ(name + 3, "YSERR_LASTERROR")) {	/* MMS removed */
#ifdef MMSYSERR_LASTERROR
	    return MMSYSERR_LASTERROR;
#else
	    goto not_there;
#endif
	}
    case 'N':
	if (!strnEQ(name + 3,"YSERR_", 6))
	    break;
	return constant_MMSYSERR_N(name, len, arg);
    case 'R':
	if (strEQ(name + 3, "YSERR_READERROR")) {	/* MMS removed */
#ifdef MMSYSERR_READERROR
	    return MMSYSERR_READERROR;
#else
	    goto not_there;
#endif
	}
    case 'V':
	if (strEQ(name + 3, "YSERR_VALNOTFOUND")) {	/* MMS removed */
#ifdef MMSYSERR_VALNOTFOUND
	    return MMSYSERR_VALNOTFOUND;
#else
	    goto not_there;
#endif
	}
    case 'W':
	if (strEQ(name + 3, "YSERR_WRITEERROR")) {	/* MMS removed */
#ifdef MMSYSERR_WRITEERROR
	    return MMSYSERR_WRITEERROR;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MM(char *name, int len, int arg)
{
    switch (name[2 + 0]) {
    case 'S':
	return constant_MMS(name, len, arg);
    case '_':
	return constant_MM_(name, len, arg);
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_MEVT_F(char *name, int len, int arg)
{
    if (6 + 1 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[6 + 1]) {
    case 'C':
	if (strEQ(name + 6, "_CALLBACK")) {	/* MEVT_F removed */
#ifdef MEVT_F_CALLBACK
	    return MEVT_F_CALLBACK;
#else
	    goto not_there;
#endif
	}
    case 'L':
	if (strEQ(name + 6, "_LONG")) {	/* MEVT_F removed */
#ifdef MEVT_F_LONG
	    return MEVT_F_LONG;
#else
	    goto not_there;
#endif
	}
    case 'S':
	if (strEQ(name + 6, "_SHORT")) {	/* MEVT_F removed */
#ifdef MEVT_F_SHORT
	    return MEVT_F_SHORT;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_ME(char *name, int len, int arg)
{
    if (2 + 3 >= len ) {
	errno = EINVAL;
	return 0;
    }
    switch (name[2 + 3]) {
    case 'C':
	if (strEQ(name + 2, "VT_COMMENT")) {	/* ME removed */
#ifdef MEVT_COMMENT
	    return MEVT_COMMENT;
#else
	    goto not_there;
#endif
	}
    case 'F':
	if (!strnEQ(name + 2,"VT_", 3))
	    break;
	return constant_MEVT_F(name, len, arg);
    case 'L':
	if (strEQ(name + 2, "VT_LONGMSG")) {	/* ME removed */
#ifdef MEVT_LONGMSG
	    return MEVT_LONGMSG;
#else
	    goto not_there;
#endif
	}
    case 'N':
	if (strEQ(name + 2, "VT_NOP")) {	/* ME removed */
#ifdef MEVT_NOP
	    return MEVT_NOP;
#else
	    goto not_there;
#endif
	}
    case 'S':
	if (strEQ(name + 2, "VT_SHORTMSG")) {	/* ME removed */
#ifdef MEVT_SHORTMSG
	    return MEVT_SHORTMSG;
#else
	    goto not_there;
#endif
	}
    case 'T':
	if (strEQ(name + 2, "VT_TEMPO")) {	/* ME removed */
#ifdef MEVT_TEMPO
	    return MEVT_TEMPO;
#else
	    goto not_there;
#endif
	}
    case 'V':
	if (strEQ(name + 2, "VT_VERSION")) {	/* ME removed */
#ifdef MEVT_VERSION
	    return MEVT_VERSION;
#else
	    goto not_there;
#endif
	}
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant_M(char *name, int len, int arg)
{
    switch (name[1 + 0]) {
    case 'C':
	return constant_MC(name, len, arg);
    case 'E':
	return constant_ME(name, len, arg);
    case 'I':
	return constant_MI(name, len, arg);
    case 'M':
	return constant_MM(name, len, arg);
    case 'O':
	return constant_MO(name, len, arg);
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}

static double
constant(char *name, int len, int arg)
{
    errno = 0;
    switch (name[0 + 0]) {
    case 'C':
	return constant_C(name, len, arg);
    case 'M':
	return constant_M(name, len, arg);
    case 'T':
	return constant_T(name, len, arg);
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}
