from django.core.serializers.json import DjangoJSONEncoder
from ..models import Vehicle


class LazyEncoder(DjangoJSONEncoder):
    def default(self, obj):
        if isinstance(obj, Vehicle):
            return str(obj)
        return super().default(obj)
