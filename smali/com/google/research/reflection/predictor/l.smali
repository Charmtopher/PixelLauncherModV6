.class public Lcom/google/research/reflection/predictor/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ahR:[D

.field ahS:[F

.field private ahT:F

.field public ahU:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/reflection/predictor/l;->ahR:[D

    .line 15
    iput-object v0, p0, Lcom/google/research/reflection/predictor/l;->ahS:[F

    .line 16
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/research/reflection/predictor/l;->ahT:F

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/l;->ahU:Ljava/util/ArrayList;

    return-void
.end method
