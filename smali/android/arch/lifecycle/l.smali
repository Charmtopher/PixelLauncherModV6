.class public Landroid/arch/lifecycle/l;
.super Landroid/arch/lifecycle/Lifecycle;
.source "SourceFile"


# instance fields
.field private X:Landroid/arch/a/b/a;

.field private Y:Landroid/arch/lifecycle/Lifecycle$State;

.field private final Z:Ljava/lang/ref/WeakReference;

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/k;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/arch/lifecycle/Lifecycle;-><init>()V

    .line 59
    new-instance v0, Landroid/arch/a/b/a;

    invoke-direct {v0}, Landroid/arch/a/b/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/l;->aa:I

    .line 76
    iput-boolean v0, p0, Landroid/arch/lifecycle/l;->ab:Z

    .line 77
    iput-boolean v0, p0, Landroid/arch/lifecycle/l;->ac:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/l;->ad:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/lifecycle/l;->Z:Ljava/lang/ref/WeakReference;

    .line 99
    sget-object p1, Landroid/arch/lifecycle/Lifecycle$State;->S:Landroid/arch/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroid/arch/lifecycle/l;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    .line 100
    return-void
.end method

.method static a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 1

    .line 339
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method private a(Landroid/arch/lifecycle/k;)V
    .locals 5

    .line 284
    iget-object v0, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    .line 285
    invoke-virtual {v0}, Landroid/arch/a/b/a;->c()Landroid/arch/a/b/f;

    move-result-object v0

    .line 286
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/arch/lifecycle/l;->ac:Z

    if-nez v1, :cond_1

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/n;

    .line 289
    :goto_1
    iget-object v3, v2, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroid/arch/lifecycle/l;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/l;->ac:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    .line 290
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, v2, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/l;->c(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 292
    iget-object v3, v2, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroid/arch/lifecycle/l;->d(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/n;->b(Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 293
    invoke-direct {p0}, Landroid/arch/lifecycle/l;->g()V

    goto :goto_1

    .line 295
    :cond_0
    goto :goto_0

    .line 296
    :cond_1
    return-void
.end method

.method static b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 3

    .line 235
    sget-object v0, Landroid/arch/lifecycle/m;->I:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected event value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :pswitch_0
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->R:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    .line 243
    :pswitch_1
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->V:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    .line 241
    :pswitch_2
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->U:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    .line 238
    :pswitch_3
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->T:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/arch/lifecycle/j;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 3

    .line 151
    iget-object v0, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    invoke-virtual {v0, p1}, Landroid/arch/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/arch/a/b/a;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/a/b/e;

    iget-object p1, p1, Landroid/arch/a/b/e;->r:Landroid/arch/a/b/e;

    goto :goto_0

    .line 153
    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/n;

    iget-object p1, p1, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_1

    .line 154
    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Landroid/arch/lifecycle/l;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/arch/lifecycle/l;->ad:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/arch/lifecycle/l;->ad:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/arch/lifecycle/Lifecycle$State;

    nop

    .line 156
    :cond_2
    iget-object v0, p0, Landroid/arch/lifecycle/l;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v0, p1}, Landroid/arch/lifecycle/l;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/arch/lifecycle/l;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 1

    .line 198
    iget-object v0, p0, Landroid/arch/lifecycle/l;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method private static d(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 3

    .line 269
    sget-object v0, Landroid/arch/lifecycle/m;->ae:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 276
    :pswitch_1
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->L:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    .line 274
    :pswitch_2
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->K:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    .line 272
    :pswitch_3
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->J:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private g()V
    .locals 2

    .line 194
    iget-object v0, p0, Landroid/arch/lifecycle/l;->ad:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/arch/lifecycle/l;->ad:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method private sync()V
    .locals 7

    .line 317
    iget-object v0, p0, Landroid/arch/lifecycle/l;->Z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/k;

    .line 318
    if-nez v0, :cond_0

    .line 319
    const-string v0, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 323
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    iget v1, v1, Landroid/arch/a/b/b;->mSize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    :goto_1
    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    iget-object v1, v1, Landroid/arch/a/b/b;->k:Landroid/arch/a/b/e;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/n;

    iget-object v1, v1, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    iget-object v4, v4, Landroid/arch/a/b/b;->m:Landroid/arch/a/b/e;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/arch/lifecycle/n;

    iget-object v4, v4, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Landroid/arch/lifecycle/l;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_2
    if-nez v2, :cond_6

    .line 324
    iput-boolean v3, p0, Landroid/arch/lifecycle/l;->ac:Z

    .line 326
    iget-object v1, p0, Landroid/arch/lifecycle/l;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v2, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    iget-object v2, v2, Landroid/arch/a/b/b;->k:Landroid/arch/a/b/e;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/n;

    iget-object v2, v2, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_4

    .line 327
    iget-object v1, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    new-instance v2, Landroid/arch/a/b/d;

    iget-object v4, v1, Landroid/arch/a/b/b;->m:Landroid/arch/a/b/e;

    iget-object v5, v1, Landroid/arch/a/b/b;->k:Landroid/arch/a/b/e;

    invoke-direct {v2, v4, v5}, Landroid/arch/a/b/d;-><init>(Landroid/arch/a/b/e;Landroid/arch/a/b/e;)V

    iget-object v1, v1, Landroid/arch/a/b/b;->n:Ljava/util/WeakHashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/arch/lifecycle/l;->ac:Z

    if-nez v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/arch/lifecycle/n;

    :goto_3
    iget-object v4, v3, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v5, p0, Landroid/arch/lifecycle/l;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v4, p0, Landroid/arch/lifecycle/l;->ac:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/arch/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    sget-object v5, Landroid/arch/lifecycle/m;->ae:[I

    invoke-virtual {v4}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    sget-object v4, Landroid/arch/lifecycle/Lifecycle$Event;->M:Landroid/arch/lifecycle/Lifecycle$Event;

    goto :goto_4

    :pswitch_2
    sget-object v4, Landroid/arch/lifecycle/Lifecycle$Event;->N:Landroid/arch/lifecycle/Lifecycle$Event;

    goto :goto_4

    :pswitch_3
    sget-object v4, Landroid/arch/lifecycle/Lifecycle$Event;->O:Landroid/arch/lifecycle/Lifecycle$Event;

    :goto_4
    invoke-static {v4}, Landroid/arch/lifecycle/l;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/arch/lifecycle/l;->c(Landroid/arch/lifecycle/Lifecycle$State;)V

    invoke-virtual {v3, v0, v4}, Landroid/arch/lifecycle/n;->b(Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/l;->g()V

    goto :goto_3

    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 329
    :cond_4
    iget-object v1, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    iget-object v1, v1, Landroid/arch/a/b/b;->m:Landroid/arch/a/b/e;

    .line 330
    iget-boolean v2, p0, Landroid/arch/lifecycle/l;->ac:Z

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    iget-object v2, p0, Landroid/arch/lifecycle/l;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    .line 331
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/n;

    iget-object v1, v1, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_5

    .line 332
    invoke-direct {p0, v0}, Landroid/arch/lifecycle/l;->a(Landroid/arch/lifecycle/k;)V

    .line 334
    :cond_5
    goto/16 :goto_0

    .line 335
    :cond_6
    iput-boolean v3, p0, Landroid/arch/lifecycle/l;->ac:Z

    .line 336
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 122
    invoke-static {p1}, Landroid/arch/lifecycle/l;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/l;->b(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 124
    return-void
.end method

.method public final a(Landroid/arch/lifecycle/j;)V
    .locals 6

    .line 161
    iget-object v0, p0, Landroid/arch/lifecycle/l;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->R:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->R:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->S:Landroid/arch/lifecycle/Lifecycle$State;

    .line 162
    :goto_0
    new-instance v1, Landroid/arch/lifecycle/n;

    invoke-direct {v1, p1, v0}, Landroid/arch/lifecycle/n;-><init>(Landroid/arch/lifecycle/j;Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 163
    iget-object v0, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    invoke-virtual {v0, p1, v1}, Landroid/arch/a/b/a;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/n;

    .line 165
    if-eqz v0, :cond_1

    .line 166
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Landroid/arch/lifecycle/l;->Z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/k;

    .line 169
    if-nez v0, :cond_2

    .line 171
    return-void

    .line 174
    :cond_2
    iget v2, p0, Landroid/arch/lifecycle/l;->aa:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroid/arch/lifecycle/l;->ab:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 175
    :cond_4
    :goto_1
    move v2, v3

    :goto_2
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/l;->c(Landroid/arch/lifecycle/j;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    .line 176
    iget v5, p0, Landroid/arch/lifecycle/l;->aa:I

    add-int/2addr v5, v3

    iput v5, p0, Landroid/arch/lifecycle/l;->aa:I

    .line 177
    :goto_3
    iget-object v5, v1, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_5

    iget-object v4, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    .line 178
    invoke-virtual {v4, p1}, Landroid/arch/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 179
    iget-object v4, v1, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/l;->c(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 180
    iget-object v4, v1, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v4}, Landroid/arch/lifecycle/l;->d(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/arch/lifecycle/n;->b(Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 181
    invoke-direct {p0}, Landroid/arch/lifecycle/l;->g()V

    .line 183
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/l;->c(Landroid/arch/lifecycle/j;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    goto :goto_3

    .line 186
    :cond_5
    if-nez v2, :cond_6

    .line 188
    invoke-direct {p0}, Landroid/arch/lifecycle/l;->sync()V

    .line 190
    :cond_6
    iget p1, p0, Landroid/arch/lifecycle/l;->aa:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroid/arch/lifecycle/l;->aa:I

    .line 191
    return-void
.end method

.method public final b(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/arch/lifecycle/l;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Landroid/arch/lifecycle/l;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    .line 131
    iget-boolean p1, p0, Landroid/arch/lifecycle/l;->ab:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroid/arch/lifecycle/l;->aa:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    iput-boolean v0, p0, Landroid/arch/lifecycle/l;->ab:Z

    .line 137
    invoke-direct {p0}, Landroid/arch/lifecycle/l;->sync()V

    .line 138
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/arch/lifecycle/l;->ab:Z

    .line 139
    return-void

    .line 132
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroid/arch/lifecycle/l;->ac:Z

    .line 134
    return-void
.end method

.method public final b(Landroid/arch/lifecycle/j;)V
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/arch/lifecycle/l;->X:Landroid/arch/a/b/a;

    invoke-virtual {v0, p1}, Landroid/arch/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public final e()Landroid/arch/lifecycle/Lifecycle$State;
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/arch/lifecycle/l;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0
.end method
