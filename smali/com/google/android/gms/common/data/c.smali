.class public Lcom/google/android/gms/common/data/c;
.super Ljava/lang/Object;


# instance fields
.field private JA:Ljava/lang/String;

.field final Jo:[Ljava/lang/String;

.field final Jw:Ljava/util/ArrayList;

.field private final Jx:Ljava/lang/String;

.field private final Jy:Ljava/util/HashMap;

.field private Jz:Z


# direct methods
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/common/data/c;->Jo:[Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/c;->Jw:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/gms/common/data/c;->Jx:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/c;->Jy:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/data/c;->Jz:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/data/c;->JA:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/c;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/c;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/t;->w(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/c;->a(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/c;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/t;->w(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->Jx:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->Jx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/data/c;->Jy:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/common/data/c;->Jy:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/common/data/c;->Jw:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->Jw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/data/c;->Jw:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/data/c;->Jw:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/data/c;->Jz:Z

    return-object p0
.end method
