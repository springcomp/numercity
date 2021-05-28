use request;
update event_queue set status = 'TO_BE_PROCESSED' where status = 'FAILED';
