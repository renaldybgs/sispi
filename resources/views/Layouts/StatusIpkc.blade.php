<div class="input-group">
	<select id="{{ $model->id }}" class="custom-select rounded-0 selectpstat" name="id_pstat">
		<option value="{{ $model->id_pstat }}" hidden>{{ $model->nama_pstat }}</option>
		@foreach($pstat as $stat)
			<option value="{{ $stat->id }}">{{ $stat->nama_pstat }}</option>
		@endforeach
	</select>								
	<span class="input-group-append">
        <button id="{{ $model->id }}" onclick="changeStatusCa(id)" type="submit" class="btn btn-info">OK</button>
      </span>
</div>	
