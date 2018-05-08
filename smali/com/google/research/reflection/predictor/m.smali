.class public Lcom/google/research/reflection/predictor/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public CX:F

.field public final ahV:Ljava/util/Set;

.field ahW:I

.field public sc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    .line 104
    iput p2, p0, Lcom/google/research/reflection/predictor/m;->CX:F

    .line 105
    new-instance p1, Ljava/util/HashSet;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/research/reflection/predictor/m;->ahV:Ljava/util/Set;

    .line 106
    iput v0, p0, Lcom/google/research/reflection/predictor/m;->ahW:I

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/util/Set;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    .line 111
    iput p2, p0, Lcom/google/research/reflection/predictor/m;->CX:F

    .line 112
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/research/reflection/predictor/m;->ahV:Ljava/util/Set;

    .line 113
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/research/reflection/predictor/m;->ahW:I

    .line 114
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 75
    check-cast p1, Lcom/google/research/reflection/predictor/m;

    iget v0, p0, Lcom/google/research/reflection/predictor/m;->CX:F

    iget p1, p1, Lcom/google/research/reflection/predictor/m;->CX:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method
