<button onclick="donehandover(id)" type="submit" class="btn-handover-done btn btn-success" data-dismiss="modal" id="{{ $project->id }}" title="Handover selesai"><i class="fas fa-check-circle"></i></button>
<a href="{{ $url_pic }}" type="button" class="modal-show btn-edit btn btn-danger" title="Update PIC" id="btn-modal"><i class="fas fa-users"></i></a>
<a href="{{ $url_progress }}" type="button" class="modal-show btn-edit btn-progress btn btn-warning" title="Update Catatan" id="btn-modal"><i class="fas fa-edit"></i></a>
