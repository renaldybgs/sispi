<div class="input-group">
	<select id="{{ $qris->id }}" class="custom-select rounded-0 selectpstat" name="id_pstat">
		<option value="{{ $qris->id_pstat }}" hidden>{{ $qris->nama_pstat }}</option>
		@foreach($pstat as $stat)
			<option value="{{ $stat->id }}">{{ $stat->nama_pstat }}</option>
		@endforeach
	</select>								
	<span class="input-group-append">
        <button id="{{ $qris->id }}" onclick="changeStatusQris(id)" type="submit" class="btn btn-info">OK</button>
      </span>

</div>	
