.class public final synthetic Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/model/ModelWriter;

.field private final synthetic f$1:Landroid/content/ContentResolver;

.field private final synthetic f$2:Lcom/android/launcher3/util/ContentWriter;

.field private final synthetic f$3:Lcom/android/launcher3/ItemInfo;

.field private final synthetic f$4:[Ljava/lang/StackTraceElement;

.field private final synthetic f$5:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Landroid/content/ContentResolver;Lcom/android/launcher3/util/ContentWriter;Lcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;->f$0:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;->f$1:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;->f$2:Lcom/android/launcher3/util/ContentWriter;

    iput-object p4, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;->f$3:Lcom/android/launcher3/ItemInfo;

    iput-object p5, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;->f$4:[Ljava/lang/StackTraceElement;

    iput-object p6, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;->f$5:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;->f$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;->f$1:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;->f$2:Lcom/android/launcher3/util/ContentWriter;

    iget-object v3, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;->f$3:Lcom/android/launcher3/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;->f$4:[Ljava/lang/StackTraceElement;

    iget-object v5, p0, Lcom/android/launcher3/model/-$$Lambda$ModelWriter$ItEGbDR_6cXLsuu8tWhEMI90Ypo;->f$5:Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/model/ModelWriter;->lambda$addItemToDatabase$0(Lcom/android/launcher3/model/ModelWriter;Landroid/content/ContentResolver;Lcom/android/launcher3/util/ContentWriter;Lcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void
.end method
