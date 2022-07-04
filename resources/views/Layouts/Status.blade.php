@switch($data->id_pstat)
  @case(1)
    <small class="badge bg-gray"><i class="fas fa-hourglass-half"></i>&nbsp Reserved</small>
    @break
  @case(2)
    <small class="badge bg-info"><i class="fas fa-check"></i>&nbsp PIF-Review</small>
    @break
  @case(3)
    <small class="badge bg-black"><i class="fas fa-history"></i>&nbsp PIF to be signed</small>
    @break
  @case(4)
    <small class="badge bg-orange"><i class="fas fa-file-invoice"></i>&nbsp Qoutation</small>
    @break
  @case(5)
    <small class="badge bg-indigo"><i class="fas fa-receipt"></i>&nbsp PIF-Received</small>
    @break
  @case(6)
    <small class="badge bg-gray-dark"><i class="fas fa-spinner"></i>&nbsp CTF-New</small>
    @break
  @case(7)
    <small class="badge bg-purple"><i class="fas fa-paper-plane"></i>&nbsp CTF-Send to Lab</small>
    @break
  @case(8)
    <small class="badge bg-fuchsia"><i class="fas fa-receipt"></i>&nbsp Report Received</small>
    @break
  @case(9)
    <small class="badge bg-pink"><i class="fas fa-spinner"></i>&nbsp Compliance New</small>
    @break
  @case(10)
    <small class="badge bg-maroon"><i class="fas fa-history"></i>&nbsp Compliance Signed</small>
    @break
  @case(11)
    <small class="badge bg-lime"><i class="fas fa-check"></i>&nbsp Reviewed</small>
    @break
  @case(12)
    <small class="badge bg-teal"><i class="fas fa-spinner"></i>&nbsp Loa-New</small>
    @break
  @case(13)
    <small class="badge bg-olive"><i class="fas fa-paper-plane"></i>&nbsp Loa-Send</small>
    @break
  @case(14)
    <small class="badge bg-lightblue"><i class="fas fa-file-invoice"></i>&nbsp Invoice Send</small>
    @break
  @case(15)
    <small class="badge bg-danger"><i class="fas fa-times"></i>&nbsp Cancel</small>
    @break
  @case(16)
    <small class="badge bg-success"><i class="fas fa-check-double"></i>&nbsp Done</small>
    @break
  @case(17)
    <small class="badge bg-primary"><i class="fas fa-spinner"></i>&nbsp Terima Dokumen</small>
    @break
  @case(18)
    <small class="badge bg-secondary"><i class="fa fa-list-ol"></i>&nbsp Perbaikan</small>
    @break
  @case(19)
    <small class="badge bg-navy"><i class="fas fa-history"></i>&nbsp Pengajuan Persetujuan</small>
    @break
  @case(20)
    <small class="badge bg-warning"><i class="fas fa-ban"></i>&nbsp Surat Rekomendasi</small>
    @break
  @case(21)
    <small class="badge bg-lightblue"><i class="fas fa-file-invoice"></i>&nbsp Formulir Permohonan</small>
    @break
  @case(22)
    <small class="badge bg-maroon"><i class="fas fa-check-double"></i>&nbsp Surat Persetujuan</small>
    @break
  @default
    @break
@endswitch