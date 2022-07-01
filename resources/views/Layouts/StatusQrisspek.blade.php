<div class="input-group">
	<select id="{{ $qrisspek->id }}" class="custom-select rounded-0 selectpstat" name="id_pstat">
		<option value="{{ $qrisspek->id_pstat }}" hidden>{{ $qrisspek->nama_pstat }}</option>
		@foreach($pstat as $stat)
			<option value="{{ $stat->id }}">{{ $stat->nama_pstat }}</option>
		@endforeach
	</select>								
	<span class="input-group-append">
        <button id="{{ $qrisspek->id }}" onclick="changeStatusQrisspek(id)" type="submit" class="btn btn-info">OK</button>
      </span>

</div>	
