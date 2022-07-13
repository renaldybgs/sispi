<div class="input-group">
	<select id="{{ $ipkc->id }}" class="custom-select rounded-0 selectpstat" name="id_pstat">
		<option value="{{ $ipkc->id_pstat }}" hidden>{{ $ipkc->nama_pstat }}</option>
		@foreach($pstat as $stat)
			<option value="{{ $stat->id }}">{{ $stat->nama_pstat }}</option>
		@endforeach
	</select>								
	<span class="input-group-append">
        <button id="{{ $ipkc->id }}" onclick="changeStatusIpkc(id)" type="submit" class="btn btn-info">OK</button>
      </span>
</div>	
