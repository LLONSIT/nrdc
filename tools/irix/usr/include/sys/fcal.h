/*
 *    Unpublished copyright (c) 1996,1997,2000,2002 Silicon Graphics, Inc.
 *    THIS IS UNPUBLISHED CONFIDENTIAL AND PROPRIETARY SOURCE CODE OF SGI.
 *
 *    The copyright notice above does not evidence any actual or intended
 *    publication or disclosure of this source code, which includes
 *    information that is confidential and/or proprietary, and is a
 *    trade secret, of Silicon Graphics, Inc. ANY REPRODUCTION,
 *    MODIFICATION, DISTRIBUTION, PUBLIC PERFORMANCE, OR PUBLIC DISPLAY OF
 *    OR THROUGH USE OF THIS SOURCE CODE WITHOUT THE EXPRESS WRITTEN
 *    CONSENT OF SILICON GRAPHICS, INC. IS STRICTLY PROHIBITED, AND IN
 *    VIOLATION OF APPLICABLE LAWS AND INTERNATIONAL TREATIES. THE RECEIPT
 *    OR POSSESSION OF THIS SOURCE CODE AND/OR RELATED INFORMATION DOES
 *    NOT CONVEY OR IMPLY ANY RIGHTS TO REPRODUCE, DISCLOSE OR DISTRIBUTE
 *    ITS CONTENTS, OR TO MANUFACTURE, USE, OR SELL ANYTHING THAT IT
 *    MAY DESCRIBE, IN WHOLE OR IN PART. 
 */

#ifndef __FCAL
#define __FCAL

/*
 * This is a conversion table used for converting from target_ID to AL_PA.
 * Note that target_ID's greater than 0x7E are illegal and 0x7E (aka AL_PA=0)
 * is reserved for a fabric port.  Also note that the actual kernel tables
 * are in fcal.c.
 */

#define INVALID_ALPA    ((u_char) -1)
#define TID_2_ALPA(tid) (((tid) > 0x7E) ? INVALID_ALPA : tid_to_alpa[tid])
#define ALPA_2_TID(alpa) (((alpa) > 255) ? 0xFF : alpa_to_tid[alpa])

#if _KERNEL
extern u_char tid_to_alpa[];
extern u_char alpa_to_tid[];

#else
u_char tid_to_alpa[] = {
  0xEF, 0xE8, 0xE4, 0xE2, 0xE1, 0xE0, 0xDC, 0xDA, /* 00 - 07 */
  0xD9, 0xD6, 0xD5, 0xD4, 0xD3, 0xD2, 0xD1, 0xCE, /* 08 - 0F */
  0xCD, 0xCC, 0xCB, 0xCA, 0xC9, 0xC7, 0xC6, 0xC5, /* 10 - 17 */
  0xC3, 0xBC, 0xBA, 0xB9, 0xB6, 0xB5, 0xB4, 0xB3, /* 18 - 1F */
  0xB2, 0xB1, 0xAE, 0xAD, 0xAC, 0xAB, 0xAA, 0xA9, /* 20 - 27 */
  0xA7, 0xA6, 0xA5, 0xA3, 0x9F, 0x9E, 0x9D, 0x9B, /* 28 - 2F */
  0x98, 0x97, 0x90, 0x8F, 0x88, 0x84, 0x82, 0x81, /* 30 - 37 */
  0x80, 0x7C, 0x7A, 0x79, 0x76, 0x75, 0x74, 0x73, /* 38 - 3F */
  0x72, 0x71, 0x6E, 0x6D, 0x6C, 0x6B, 0x6A, 0x69, /* 40 - 47 */
  0x67, 0x66, 0x65, 0x63, 0x5C, 0x5A, 0x59, 0x56, /* 48 - 4F */
  0x55, 0x54, 0x53, 0x52, 0x51, 0x4E, 0x4D, 0x4C, /* 50 - 57 */
  0x4B, 0x4A, 0x49, 0x47, 0x46, 0x45, 0x43, 0x3C, /* 58 - 5F */
  0x3A, 0x39, 0x36, 0x35, 0x34, 0x33, 0x32, 0x31, /* 60 - 67 */
  0x2E, 0x2D, 0x2C, 0x2B, 0x2A, 0x29, 0x27, 0x26, /* 68 - 6F */
  0x25, 0x23, 0x1F, 0x1E, 0x1D, 0x1B, 0x18, 0x17, /* 70 - 77 */
  0x10, 0x0F, 0x08, 0x04, 0x02, 0x01, 0x00        /* 78 - 7E .. 7F is illegal */
};

u_char alpa_to_tid[] = {
  0x7e, 0x7d, 0x7c, 0xff, 0x7b, 0xff, 0xff, 0xff, /* 00 - 07 */
  0x7a, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x79, /* 08 - 0f */
  0x78, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x77, /* 10 - 17 */
  0x76, 0xff, 0xff, 0x75, 0xff, 0x74, 0x73, 0x72, /* 18 - 1f */
  0xff, 0xff, 0xff, 0x71, 0xff, 0x70, 0x6f, 0x6e, /* 20 - 27 */
  0xff, 0x6d, 0x6c, 0x6b, 0x6a, 0x69, 0x68, 0xff, /* 28 - 2f */
  0xff, 0x67, 0x66, 0x65, 0x64, 0x63, 0x62, 0xff, /* 30 - 37 */
  0xff, 0x61, 0x60, 0xff, 0x5f, 0xff, 0xff, 0xff, /* 38 - 3f */
  0xff, 0xff, 0xff, 0x5e, 0xff, 0x5d, 0x5c, 0x5b, /* 40 - 47 */
  0xff, 0x5a, 0x59, 0x58, 0x57, 0x56, 0x55, 0xff, /* 48 - 4f */
  0xff, 0x54, 0x53, 0x52, 0x51, 0x50, 0x4f, 0xff, /* 50 - 57 */
  0xff, 0x4e, 0x4d, 0xff, 0x4c, 0xff, 0xff, 0xff, /* 58 - 5f */
  0xff, 0xff, 0xff, 0x4b, 0xff, 0x4a, 0x49, 0x48, /* 60 - 67 */
  0xff, 0x47, 0x46, 0x45, 0x44, 0x43, 0x42, 0xff, /* 68 - 6f */
  0xff, 0x41, 0x40, 0x3f, 0x3e, 0x3d, 0x3c, 0xff, /* 70 - 77 */
  0xff, 0x3b, 0x3a, 0xff, 0x39, 0xff, 0xff, 0xff, /* 78 - 7f */
  0x38, 0x37, 0x36, 0xff, 0x35, 0xff, 0xff, 0xff, /* 80 - 87 */
  0x34, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x33, /* 88 - 8f */
  0x32, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x31, /* 90 - 97 */
  0x30, 0xff, 0xff, 0x2f, 0xff, 0x2e, 0x2d, 0x2c, /* 98 - 9f */
  0xff, 0xff, 0xff, 0x2b, 0xff, 0x2a, 0x29, 0x28, /* a0 - a7 */
  0xff, 0x27, 0x26, 0x25, 0x24, 0x23, 0x22, 0xff, /* a8 - af */
  0xff, 0x21, 0x20, 0x1f, 0x1e, 0x1d, 0x1c, 0xff, /* b0 - b7 */
  0xff, 0x1b, 0x1a, 0xff, 0x19, 0xff, 0xff, 0xff, /* b8 - bf */
  0xff, 0xff, 0xff, 0x18, 0xff, 0x17, 0x16, 0x15, /* c0 - c7 */
  0xff, 0x14, 0x13, 0x12, 0x11, 0x10, 0x0f, 0xff, /* c8 - cf */
  0xff, 0x0e, 0x0d, 0x0c, 0x0b, 0x0a, 0x09, 0xff, /* d0 - d7 */
  0xff, 0x08, 0x07, 0xff, 0x06, 0xff, 0xff, 0xff, /* d8 - df */
  0x05, 0x04, 0x03, 0xff, 0x02, 0xff, 0xff, 0xff, /* e0 - e7 */
  0x01, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, /* e8 - ef */
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, /* f0 - f7 */
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, /* f8 - ff */
};
#endif

#if _KERNEL
#pragma pack(1)
struct fc_basic_accept_payload
{
	uint8_t		seqid_valid;
	uint8_t		last_seqid;
	uint16_t	reserved;
	uint16_t	ox_id;
	uint16_t	rx_id;
	uint16_t	seqcnt_low;
	uint16_t	seqcnt_high;
};

struct fc_basic_reject_payload
{
	uint8_t		reserved;
	uint8_t		reason_code;
	uint8_t		reason_explanation;
	uint8_t		vendor_unique;
};


/*
 * Port Login structures
 */
	/*
	 * N_port common service parameters
	 */
	struct fc_nport_common_service_param
	{
		uint16_t	fcph_version;
		uint16_t	bbcredit;
		uint16_t	common_features;
		uint16_t	rcvdata_size;
		uint16_t	max_concurrent_seq;
		uint16_t	reloffset;
		uint32_t	e_d_tov;
	};

	/*
	 * Class 1, 2, and 3 service parameters
	 */
	struct fc_class_service_param
	{
		uint16_t	service_options;
		uint16_t	initiator_ctrl;
		uint16_t	target_ctrl;
		uint16_t	rcv_data_size;
		uint16_t	concurrent_seq;
		uint16_t	eecredit;
		uint16_t	openseq_per_exchg;
		uint16_t	reserved;
	};

/*
 * The PLOGI payload and PLOGI ACC payload structures are identical.
 */
struct fc_plogi_payload
{
	uint32_t				command_code;

	struct fc_nport_common_service_param	common_service_param;

	uint64_t				port_name;
	uint64_t				node_name;

	/* Class 1, 2, 3 service parameters */
	struct fc_class_service_param		class1_service_param;
	struct fc_class_service_param		class2_service_param;
	struct fc_class_service_param		class3_service_param;

	uint8_t					reserved[16];
	uint8_t					vendor_version[16];
};


/*
 * Port Logout structures
 */
struct fc_logo_payload
{
	uint32_t			command_code;
	uint8_t				reserved;
	uint8_t				nport_id[3];
	uint64_t			port_name;
};

struct fc_logo_accept
{
	uint32_t		command_code;
};


/*
 * Process Login structures
 * The PRLI, PRLI ACC, PRLO, and PRLO accept payloads are all very
 * similar in structure.  Certain fields are not used and should be
 * zeroed in some payloads.
 */
struct fc_prli_payload
{
	uint8_t			command_code;
	uint8_t			page_length;
	uint16_t		payload_length;
	uint8_t			type_code;
	uint8_t			type_code_extension;
	uint16_t		orig_proc_valid:1,
				resp_proc_valid:1,
				est_image_pair:1,
				reserved0:1,
				response_code:4,
				reserved1:8;
	uint32_t		orig_proc_associator;
	uint32_t		resp_proc_associator;
	uint8_t			reserved2[3];
	uint8_t			svc_param;
};
#define FC_PRLI_PAYLOAD_LENGTH 0x14
#define FC_PRLI_TYPE_CODE 0x8
#define FC_PRLI_SVC_PARAM_SEND 0x22
#define FC_PRLI_SVC_PARAM_DESIRED 0x12


struct fc_rrq_payload
{
	uint32_t		command_code;
	uint8_t			reserved0;
	uint8_t			originator_sid[3];
	uint16_t		ox_id;
	uint16_t		rx_id;
	uint8_t			association_header[32];
};


/*
 * Address discovery and Address disconver accept payloads are
 * similar.  The accept payload fields correspond to responder
 * while the ADISC payload corresponds to originator.
 */
struct fc_adisc_payload
{
	uint32_t			command_code;
	uint8_t				reserved0;
	uint8_t				hard_address[3];
	uint64_t			port_name;
	uint64_t			node_name;
	uint32_t			reserved:8,
					nport_id:24;
};

struct fc_lsrjt_payload
{
	uint32_t			command_code;
	struct fc_basic_reject_payload	reject;
};


/*
 * The size of the sense_data field at the end of the structure
 * is variable, but doesn't need to be defined here, since it is
 * at the end of the structure.
 */
struct fc_fcprsp_info
{
	uint8_t				reserved3[3];
	uint8_t				rsp_code;
	uint8_t				reserved4[4];
};

struct fc_fcprsp_payload
{
	uint8_t				reserved[10];
	uint8_t				reserved2:4,
					resid_underrun:1,
					resid_overrun:1,
					sense_length_valid:1,
					rsp_length_valid:1;
	uint8_t				scsi_status;
	uint32_t			resid_count;
	uint32_t			sense_length;
	uint32_t			rsp_length;
	uint8_t				addl_info[1];
};
#pragma pack(0)
#endif

#endif
