<div class="input-group">
	<select id="{{ $surat->id }}" class="custom-select rounded-0 selectpstat" name="id_pstat">
		<option value="{{ $surat->id_pstat }}" hidden>{{ $surat->nama_pstat }}</option>
		@foreach($pstat as $stat)
			<option value="{{ $stat->id }}">{{ $stat->nama_pstat }}</option>
		@endforeach
	</select>								
	<span class="input-group-append">
        <button id="{{ $surat->id }}" onclick="changeStatusSuratPja(id)" type="submit" class="btn btn-info">OK</button>
      </span>
</div>	
