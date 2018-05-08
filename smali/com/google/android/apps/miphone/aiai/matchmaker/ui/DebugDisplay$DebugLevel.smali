.class final enum Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum uo:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

.field public static final enum up:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

.field public static final enum uq:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

.field private static final ur:I

.field private static final synthetic us:[Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 141
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->uo:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    .line 144
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    const-string v1, "RECTS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->up:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    .line 147
    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    const-string v1, "RECTS_AND_TEXT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->uq:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->uo:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->up:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->uq:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->us:[Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    .line 149
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->uq:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    iget v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->value:I

    add-int/2addr v0, v3

    sput v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->ur:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 176
    iput p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->value:I

    .line 177
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;
    .locals 1

    .line 139
    const-class v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;
    .locals 1

    .line 139
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->us:[Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    invoke-virtual {v0}, [Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/miphone/aiai/matchmaker/ui/DebugDisplay$DebugLevel;

    return-object v0
.end method
