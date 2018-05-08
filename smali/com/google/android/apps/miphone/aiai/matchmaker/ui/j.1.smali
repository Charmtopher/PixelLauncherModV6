.class public Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final uN:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;


# instance fields
.field final uO:Ljava/util/List;

.field final uP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->uN:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->uO:Ljava/util/List;

    .line 318
    iput p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->uP:I

    .line 319
    return-void
.end method

.method static a(ZIIIIII)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;
    .locals 3

    .line 61
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;-><init>()V

    .line 62
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    if-nez p0, :cond_0

    move p4, v2

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    iput-boolean p4, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sJ:Z

    .line 63
    if-ne p1, v2, :cond_1

    if-eqz p0, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sI:Z

    .line 64
    iput-boolean v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sK:Z

    .line 65
    iput p2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sL:I

    .line 66
    iput p3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sM:I

    .line 67
    iput p5, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sN:I

    .line 68
    iput p6, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sO:I

    .line 69
    return-object v0
.end method

.method static au(I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;
    .locals 1

    .line 33
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;

    invoke-direct {v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;-><init>(I)V

    return-object v0
.end method

.method static b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;
    .locals 4

    .line 37
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;-><init>()V

    .line 38
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tD:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sk:Z

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sJ:Z

    .line 40
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tD:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sk:Z

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput-boolean v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sI:Z

    .line 42
    iput-boolean v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sK:Z

    .line 43
    iget-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sk:Z

    if-eqz v1, :cond_2

    .line 44
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tE:I

    iput v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sL:I

    .line 45
    iget p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tF:I

    iput p0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sM:I

    goto :goto_2

    .line 47
    :cond_2
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tE:I

    iput v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sN:I

    .line 48
    iget p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tF:I

    iput p0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;->sO:I

    .line 50
    :goto_2
    return-object v0
.end method

.method private ct()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;
    .locals 2

    .line 312
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;-><init>()V

    .line 313
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->uO:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    move-result-object p1

    .line 138
    invoke-virtual {p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->co()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    iput p3, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->type:I

    .line 139
    iput-object p2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 140
    iput-object p4, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    .line 141
    const/4 p3, 0x4

    iput p3, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sq:I

    .line 142
    iget p2, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    iput p2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sP:I

    .line 143
    return-object p0
.end method

.method final b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;
    .locals 3

    .line 279
    invoke-direct {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->ct()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    move-result-object v0

    .line 280
    if-eqz p1, :cond_0

    .line 281
    iput-object p1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    .line 283
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sy:J

    .line 284
    new-instance p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    invoke-direct {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;-><init>()V

    .line 285
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    iput-object p1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sB:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    .line 286
    return-object p1
.end method

.method final b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;

    move-result-object p1

    .line 152
    invoke-virtual {p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->co()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    iput p3, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->type:I

    .line 153
    iput-object p2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sn:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 154
    iput-object p4, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->ss:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/n;

    .line 155
    const/4 p3, 0x5

    iput p3, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sq:I

    .line 156
    iget p2, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    iput p2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/o;->sP:I

    .line 157
    return-object p0
.end method

.method final c(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;
    .locals 3

    .line 301
    invoke-direct {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->ct()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    move-result-object v0

    .line 302
    if-eqz p1, :cond_0

    .line 303
    iput-object p1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

    .line 305
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sy:J

    .line 306
    new-instance p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    invoke-direct {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;-><init>()V

    .line 307
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    iput-object p1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sC:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/f;

    .line 308
    return-object p1
.end method

.method final cr()Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;
    .locals 3

    .line 264
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;

    invoke-direct {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;-><init>()V

    .line 265
    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->uP:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sd:J

    .line 266
    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->uO:Ljava/util/List;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->uN:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    iput-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;->sE:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    .line 267
    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/k;)Lcom/google/android/apps/miphone/aiai/matchmaker/api/FeedbackData;

    move-result-object v0

    return-object v0
.end method

.method final cs()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;
    .locals 3

    .line 271
    invoke-direct {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/j;->ct()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;

    move-result-object v0

    .line 272
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sy:J

    .line 273
    new-instance v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

    invoke-direct {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;-><init>()V

    .line 274
    const/4 v2, -0x1

    iput v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sw:I

    iput-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/j;->sA:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/l;

    .line 275
    return-object v1
.end method
