.class public Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

.field rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

.field rX:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/t;

.field tp:I

.field public final uA:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

.field final uB:Ljava/util/List;

.field private final uC:Landroid/util/SparseArray;

.field private uD:I

.field uE:Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

.field uF:Landroid/graphics/RectF;

.field final uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;I)V
    .locals 1

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uC:Landroid/util/SparseArray;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uF:Landroid/graphics/RectF;

    .line 335
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    .line 336
    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uE:Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    .line 337
    if-eqz p2, :cond_0

    .line 338
    iget-object p1, p2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    .line 340
    :cond_0
    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    .line 341
    iput-object p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uA:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

    .line 342
    iput p5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->tp:I

    .line 343
    return-void
.end method

.method static a(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;
    .locals 7

    .line 56
    new-instance v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;I)V

    .line 58
    if-ltz p2, :cond_0

    .line 59
    invoke-direct {v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cp()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 61
    :cond_0
    return-object v6
.end method

.method private a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;)V
    .locals 5

    .line 283
    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;->tr:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 284
    iget v3, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tp:I

    iget v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->tp:I

    if-ne v3, v4, :cond_0

    .line 285
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_1
    return-void
.end method

.method private cp()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;
    .locals 7

    .line 303
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->tp:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    if-nez v0, :cond_0

    goto :goto_3

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cn()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    .line 307
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 308
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 309
    invoke-virtual {p0, v4, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;Landroid/graphics/RectF;)V

    .line 310
    iget-object v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uC:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    .line 311
    if-nez v5, :cond_1

    .line 312
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 313
    iget-object v6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uC:Landroid/util/SparseArray;

    iget v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {v5, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 318
    :goto_1
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uF:Landroid/graphics/RectF;

    if-nez v4, :cond_2

    .line 319
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uF:Landroid/graphics/RectF;

    goto :goto_2

    .line 321
    :cond_2
    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uF:Landroid/graphics/RectF;

    invoke-virtual {v4, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 308
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    invoke-direct {p0, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;)V

    .line 326
    return-object p0

    .line 304
    :cond_4
    :goto_3
    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)Landroid/graphics/RectF;
    .locals 4

    .line 104
    iget v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tp:I

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->tp:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 105
    return-object v2

    .line 107
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v3, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 108
    iget-object v3, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 109
    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    aget-object p1, p1, v0

    iget p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->as(I)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    .line 110
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0

    .line 107
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_2
    return-object v2
.end method

.method final a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;Landroid/graphics/RectF;)V
    .locals 4

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;Landroid/graphics/RectF;)V

    .line 214
    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vy:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vy:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    iget-object v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vx:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget-object v3, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vy:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iput v2, p2, Landroid/graphics/RectF;->left:F

    iget-object v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vx:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;->vy:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, p2, Landroid/graphics/RectF;->top:F

    iget p1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->right:F

    iget p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 215
    return-void
.end method

.method final a(ILcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;I)Z
    .locals 1

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->at(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->clear()V

    .line 177
    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    .line 178
    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uE:Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    .line 179
    iget-object p1, p3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    .line 180
    iput p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->tp:I

    .line 181
    invoke-direct {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cp()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 182
    const/4 p1, 0x1

    return p1

    .line 184
    :cond_0
    const/16 p2, 0x2f

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "--Error: token expired; new token = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/p;->g(Ljava/lang/String;)V

    .line 185
    const/4 p1, 0x0

    return p1
.end method

.method final ar(I)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;
    .locals 7

    .line 121
    new-instance v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uE:Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uz:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uA:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

    move-object v0, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;Lcom/google/android/apps/miphone/aiai/matchmaker/api/EntitiesData;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/A;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;I)V

    .line 122
    invoke-direct {v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cp()Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    move-result-object p1

    .line 121
    return-object p1
.end method

.method final as(I)Landroid/graphics/RectF;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uC:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    return-object p1
.end method

.method final at(I)Z
    .locals 1

    .line 274
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uD:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;Landroid/graphics/RectF;)V
    .locals 4

    .line 222
    iget-object v0, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    iget v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->left:F

    iget-object v1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    iget v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->top:F

    iget-object v2, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    iget v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->width:F

    iget-object v3, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    iget v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->left:F

    add-float/2addr v2, v3

    iget-object v3, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    iget v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->height:F

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tk:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;

    iget p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/J;->top:F

    add-float/2addr v3, p1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 227
    return-void
.end method

.method final clear()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    .line 66
    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    .line 67
    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uF:Landroid/graphics/RectF;

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uC:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 70
    return-void
.end method

.method final cm()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    return-object v0
.end method

.method final cn()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cm()[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->tp:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method final co()Z
    .locals 4

    .line 231
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->tp:I

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cn()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    if-nez v0, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cn()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->cn()Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;->sa:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tm:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 236
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_2
    return v1

    .line 232
    :cond_3
    :goto_1
    return v1
.end method

.method final isEmpty()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rT:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/C;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->rS:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/c;->se:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/b;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final nextToken()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uD:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uD:I

    return v0
.end method
