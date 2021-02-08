QCA_EDMA:=kmod-qca-edma
NSS_COMMON:= \
	kmod-qca-nss-dp \
	kmod-qca-nss-drv
#	kmod-qca-nss-gmac

NSS_EIP197_FW:= \
	qca-nss-fw-eip-hk
#	qca-nss-fw-eip-cp

#NSS_STANDARD:= \
#	qca-nss-fw2-retail \
#	qca-nss-fw-hk-retail \
#	qca-nss-fw-cp-retail \
#	qca-nss-fw-mp-retail
NSS_STANDARD:= \
	qca-nss-fw-hk-retail \
	qca-nss-fw-mp-retail

NSS_MACSEC:= \
	kmod-qca-nss-macsec \
	qca-wpa-supplicant-macsec \
	qca-hostap-macsec

QCA_ECM_PREMIUM:= kmod-qca-nss-ecm-premium

NSS_CLIENTS_STANDARD:= -kmod-qca-nss-drv-qdisc -kmod-qca-nss-drv-igs kmod-qca-nss-drv-tun6rd \
	kmod-qca-nss-drv-tunipip6 -kmod-qca-nss-drv-l2tpv2 -kmod-qca-nss-drv-pptp \
	-kmod-qca-nss-drv-map-t kmod-qca-nss-drv-lag-mgr \
	kmod-qca-nss-drv-bridge-mgr kmod-qca-nss-drv-gre kmod-qca-nss-drv-pppoe \
	-kmod-qca-nss-drv-ovpn-mgr -kmod-qca-nss-drv-ovpn-link kmod-qca-nss-drv-vxlanmgr -kmod-qca-nss-drv-netlink \
	-kmod-qca-ovsmgr -kmod-qca-nss-drv-match

NSS_CRYPTO:= kmod-qca-nss-crypto -kmod-qca-nss-cfi-cryptoapi -kmod-qca-nss-cfi-ocf -kmod-qca-nss-drv-ipsecmgr -kmod-crypto-ocf

NSS_RMNET:= kmod-rmnet-nss

HW_CRYPTO:= kmod-crypto-qcrypto

SHORTCUT_FE:= kmod-shortcut-fe kmod-shortcut-fe-cm kmod-shortcut-fe-drv
QCA_RFS:= kmod-qca-rfs

SWITCH_SSDK_PKGS:= kmod-qca-ssdk-hnat kmod-qca-ssdk-nohnat qca-ssdk-shell swconfig

WIFI_OPEN_PKGS:= kmod-ath11k wpad-mesh hostapd-utils \
	-kmod-art2-netlink sigma-dut-open wpa-cli qcmbr-10.4-netlink \
	athtestcmd -qca-whc-lbd -qca-whc-init -libhyficommon qca-wifi-scripts

WIFI_PKGS:=kmod-qca-wifi-unified-profile \
	qca-hostap qca-hostapd-cli qca-wpa-supplicant \
	qca-wpa-cli qca-cfg80211tool qca-wifi-scripts
#	qca-spectral qca-wpc sigma-dut \
#	qcmbr-10.4 qca-wrapd qca-wapid qca-acfg whc whc-ui \
#	qca-lowi qca-iface-mgr-10.4 qca-icm qca-cfg80211 athdiag qca-cnss-daemon \
#	athtestcmd-lith

WIFI_FW_PKGS:=qca-wifi-hk-fw-hw1-10.4-asic

OPENWRT_STANDARD:= \
	luci openssl-util

STORAGE:=kmod-scsi-core kmod-usb-storage kmod-usb-uas kmod-nls-cp437 kmod-nls-iso8859-1  \
	kmod-fs-msdos kmod-fs-vfat kmod-fs-ntfs ntfs-3g e2fsprogs losetup

USB_ETHERNET:= kmod-usb-net-rtl8152 kmod-usb-net

TEST_TOOLS:=ethtool i2c-tools tcpdump

UTILS:=file luci-app-samba rng-tools profilerd

#COREBSP_UTILS:=pm-utils wififw_mount_script qca-thermald-10.4 qca-qmi-framework qca-time-services \
#	qca-wlanfw-upgrade dashboard
COREBSP_UTILS:=pm-utils wififw_mount_script qca-thermald-10.4 qca-qmi-framework qca-time-services \
	dashboard

FAILSAFE:= kmod-bootconfig

NETWORKING:=mcproxy -dnsmasq dnsmasq-dhcpv6 bridge ip-full trace-cmd mwan3 \
	rp-pppoe-relay iptables-mod-extra iputils-tracepath iputils-tracepath6 \
	luci-app-upnp luci-app-ddns luci-proto-ipv6 \
	kmod-nf-nathelper-extra kmod-nf-nathelper
#	kmod-ipt-nathelper-rtsp \

CD_ROUTER:=kmod-ipt-ipopt kmod-bonding kmod-nat-sctp lacpd \
	arptables ds-lite 6rd ddns-scripts xl2tpd \
	quagga quagga-ripd quagga-zebra quagga-watchquagga quagga-vtysh \
	kmod-ipv6 ip6tables iptables-mod-ipsec iptables-mod-filter \
	isc-dhcp-relay-ipv6 rp-pppoe-server ppp-mod-pptp -iptables-mod-physdev

QOS:=tc kmod-sched kmod-sched-core kmod-sched-connmark kmod-ifb iptables \
	iptables-mod-filter iptables-mod-ipopt iptables-mod-conntrack-extra

MAP_PKGS:=map-t 464xlat tayga

HYFI:=hyfi hyfi-ui

QCA_MAD:=qca-mad

AQ_PHY:=kmod-aq_phy kmod-qca_85xx_sw aq-fw-download

#These packages depend on SWITCH_SSDK_PKGS
IGMPSNOOPING_RSTP:=rstp
#qca-mcs-apps

#IPSEC:=openswan kmod-ipsec kmod-ipsec4 kmod-ipsec6
IPSEC:=kmod-ipsec kmod-ipsec4 kmod-ipsec6

AUDIO:=kmod-sound-soc-ipq alsa

VIDEO:=kmod-qpic_panel_ertft

NSS_USERSPACE:=nlcfg

KPI:=iperf sysstat

USB_DIAG:=kmod-diag-char kmod-usb-f-diag qca-diag kmod-usb-gdiag

CNSS_DIAG:=cnssdiag

FTM:=ftm

QMSCT_CLIENT:=qmsct_client

OPENVPN:= openvpn-easy-rsa openvpn-openssl luci-app-openvpn

SWITCH_SSDK_NOHNAT_PKGS:= kmod-qca-ssdk-nohnat qca-ssdk-shell swconfig

SWITCH_OPEN_PKGS:= kmod-switch-ar8216 swconfig

QMI_SAMPLE_APP:=kmod-qmi_sample_client

EXTRA_NETWORKING:= $(CD_ROUTER)
#		$(NSS_EIP197_FW) rdk-v-wifi-ath10k

define Profile/QSDK_Premium
	NAME:=Qualcomm Technologies, Inc SDK Premium Profile
	PACKAGES:=$(OPENWRT_STANDARD) $(STORAGE) \
		$(AUDIO) $(VIDEO) $(TEST_TOOLS) $(COREBSP_UTILS) \
		$(AQ_PHY) $(FAILSAFE) -lacpd $(USB_DIAG) $(SWITCH_SSDK_PKGS) \
		$(FTM) $(QMSCT_CLIENT) $(KPI) $(NSS_COMMON) \
		$(NSS_STANDARD) $(UTILS) $(NETWORKING) $(CD_ROUTER) $(NSS_CLIENTS_STANDARD) \
		$(QCA_ECM_PREMIUM) $(NSS_CRYPTO) $(NSS_EIP197_FW) $(IGMPSNOOPING_RSTP) \
		$(WIFI_PKGS) $(WIFI_FW_PKGS)
endef

#		$(HYFI) $(CNSS_DIAG) kmod-art2 \
#		$(NSS_USERSPACE) $(NSS_RMNET) \
#		$(NSS_MACSEC) $(QCA_EDMA) \
#		$(IPSEC) $(QCA_RFS) $(SHORTCUT_FE) \
#		$(MAP_PKGS) $(QCA_MAD) $(OPENVPN) $(HW_CRYPTO) $(QOS)

define Profile/QSDK_Premium/Description
	QSDK Premium package set configuration.
	Enables qca-wifi 11.0 packages
endef

$(eval $(call Profile,QSDK_Premium))

define Profile/QSDK_Open
	NAME:=Qualcomm Technologies, Inc SDK Open Profile
	PACKAGES:=$(OPENWRT_STANDARD) $(STORAGE) $(TEST_TOOLS) $(AUDIO) $(VIDEO) \
		$(COREBSP_UTILS) $(FAILSAFE) $(USB_DIAG) $(SWITCH_SSDK_NOHNAT_PKGS) \
		$(FTM) $(KPI) $(UTILS) $(NETWORKING) $(EXTRA_NETWORKING) \
		$(WIFI_OPEN_PKGS) $(USB_ETHERNET) $(NSS_COMMON) $(NSS_STANDARD) \
		$(QCA_ECM_PREMIUM) -lacpd  \
		qca-cnss-daemon qca-wifi-hk-fw-hw1-10.4-asic $(CNSS_DIAG) \
		qrtr $(QMI_SAMPLE_APP) ath11k-fwtest ath11k-qdss libtirpc
endef

#	$(SHORTCUT_FE) $(QCA_EDMA) $(HW_CRYPTO) $(QCA_RFS) $(IPSEC) $(QOS) kmod-qca-nss-macsec \
#	$(MAP_PKGS) $(QCA_ECM_PREMIUM) $(SWITCH_OPEN_PKGS) $(NSS_COMMON) $(NSS_STANDARD) $(AQ_PHY) \
#	$(NSS_CRYPTO) $(NSS_CLIENTS_STANDARD) $(CD_ROUTER) $(IGMPSNOOPING_RSTP) -rstp

define Profile/QSDK_Open/Description
	QSDK Open package set configuration.
	Enables wifi open source packages
endef

$(eval $(call Profile,QSDK_Open))
